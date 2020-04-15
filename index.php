<!DOCTYPE html>
<html>
  <head>
    <link rel="icon" href="wk.png">
    <title>Stop Penyebaran Covid</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="desain.css">
    
    <?php
    error_reporting(0);
    include "config/koneksi.php";
     if($_POST["simpan"]){
         $jawaban = $_POST["jawaban"];
         $ya=0;
         if(count($_POST["jawaban"]) <1 ){
             echo "<script>alert('Lengkapi Jawaban !!!');document.location.href=index.php</script>";
         }else{
             foreach($jawaban as $id => $nilai){
                 $soal =mysqli_query($con, "SELECT * FROM soal where id='$id'");
                
                 $data_jawab = mysqli_fetch_array($soal);
                 if($data_jawab["jawaban"] == $nilai){
                     $ya++;    
                 }
             }

             echo "<p>";
             if ($ya <= 7){
                 echo "Resiko Terkena Virus COVID-19 Rendah";
             }elseif ($ya >= 7 && $ya <=15){
                 echo "Resiko Terkena Virus COVID-19 Sedang ";
             }else{
                 echo "Resiko Terkena Virus COVID-19 Tinggi ";
             }
         }
     }
?>


  </head>
  <body>
    <div class="testbox">
      <form  method='post' name="form1" id="form1" action="selesai.php">
        <h1>Survei Resiko Pribadi Terkait Covid-19</h1>
        <p>Mari Kita Isi Sesuai Kegiatan Harian Anda, Untuk Bersatu Melawan Penyebaran Covid-19 Selama 14 Hari ke Depan :</p>
        <div class="colums">
          <div class="item">
            <label for="fname"> Nama</label>
            <input type="text" name="nama" required/>
          </div>
          <div class="item">
            <label for="lname"> Umur</label>
            <input type="number" min="0" max="120" name="umur" required/>
          </div>
          <div class="item">
            <label for="address1">Hp</label>
            <input type="number" name="hp" required/>
          </div>
          <div class="item">
            <label for="address2">Alamat</label>
            <input  type="text" max="13" name="alamat" required/>
          </div>
        </div>
        <table>
            <br>
          <tr>
            <br>
            <th class="first-col">Soal</th>
            <th>Ya</th>
            <th>Tidak</th>
          </tr>
            <?php
                $id=0;
                $titik =". ";
                $soal = mysqli_query($con,"SELECT * FROM soal");
                while($data=mysqli_fetch_array($soal)){
                  $id ++; 
            ?>
          <tr>
            <td style="text-align: left;"><?php echo $id; ?><?php echo $titik; ?><?php echo $data["pertanyaan"]?></td>
            <td><input type="radio" value="a" name="jawaban[<?php echo $data['id']?>]"required><?php echo $data["ya_a"]?></td>
            <td><input type="radio" value="b" name="jawaban[<?php echo $data['id']?>]"required><?php echo $data["tidak_b"]?><br></td>
          </tr>
                          <?php
                     }
                ?>
        </table>
        <br>
        <div class="btn-block">
            <input type='submit' class="bbn" name='simpan' value= 'Perlihatkan Hasil'/>
        </div>
      </form>
    </div>
  </body>
</html>