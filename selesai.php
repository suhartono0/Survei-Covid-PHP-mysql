<!DOCTYPE html>
<html>
  <head>
    <link rel="icon" href="wk.png">
    <title>Stop Penyebaran Covid</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="desain.css">

    <?php
           include "config/koneksi.php";
            $sql = mysqli_query($con,"SELECT * FROM pengunjung");
            while($row = mysqli_fetch_array($sql)){
        ?>
        <?php
            }
        ?>

        
    <?php
    include "config/koneksi.php";

    if($_POST["simpan"]){
        $sql = mysqli_query($con,"INSERT INTO pengunjung (nama,umur,hp,alamat) values ('$_POST[nama]','$_POST[umur]','$_POST[hp]','$_POST[alamat]')");
            if($sql){
                echo "<script>alert('data berhasil disimpan');</script>";
            }
        $jawaban = $_POST["jawaban"];
        $ya=0;
        if(count($_POST["jawaban"]) <1 ){
            echo "<script>alert('Anda belum menjawab soal');document.location.href=index.php</script>";
        }else{
            foreach($jawaban as $id => $nilai){
                $soal =mysqli_query($con, "SELECT * FROM soal where id='$id'");
                
                $data_jawab = mysqli_fetch_array($soal);
                if($data_jawab["jawaban"] == $nilai){
                    $ya++;    
                }
            }
            if ($ya <= 7){
                $message = "Resiko Anda Terkena Virus COVID-19 Adalah Rendah";
                // echo "Resiko Terkena Virus COVID-19 Rendah";
            }elseif ($ya >= 7 && $ya <=15){
                $message = "Resiko Anda Terkena Virus COVID-19 Adalah Sedang ";
            }else{
                $message = "Resiko Anda Terkena Virus COVID-19 Adalah Tinggi ";
            }
            $data_jawab = mysqli_query($con,"INSERT INTO hasil (jawaban_ya) values ('$ya')");
        }
      }
    ?>
  </head>
  <body>
    <div class="testbox">
      <form action="/">
        <?php
            include "config/koneksi.php"; 
            $sql = mysqli_query($con,"SELECT * FROM pengunjung ORDER BY id DESC LIMIT 1");
            while($row = mysqli_fetch_array($sql)){
        ?>
        <div class="colums">
          <div class="item">
            <label for="fname">Nama</label>
            <input id="nama" type="text" name="fname" value="<?php echo $row['nama']?>" readonly="">
          </div>
          <div class="item">
            <label for="lname"> Umur</label>
            <input id="umur" type="text" value="<?php echo $row['umur']?>" name="lname" readonly="">
          </div>
          <div class="item">
            <label for="address1">Alamat</label>
            <input id="hp" type="text" value="<?php echo $row['alamat'] ?>"  name="address1" readonly="">
          </div>
          <div class="item">
            <label for="address2">Jumlah Jawaban Ya</label>
            <input id="address2" type="text" value="<?php echo $ya ;?>" name="address2" readonly="">
          </div>
        </div>
                <?php
            }
        ?>
        <h2>Terima Kasih Sudah Melakukan  Survei Disini</h2>
        <label>Berdasarkan Dari Test Survei Yang Anda Isi,</label>
        <label><?php
                    echo $message;
                ?></label>
        <div class="btn-block">
          <a href="http://localhost/Corona/index.php"><button type='button'>Survei Lagi</button></a>
        </div>

      </form>
    </div>
  </body>
</html>