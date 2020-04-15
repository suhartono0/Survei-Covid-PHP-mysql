<?php
$conn = mysqli_connect('localhost', 'root', '', 'php_survei');

$no = mysqli_query($conn, "SELECT id FROM tb_survei ORDER BY id ASC");
$kodeid = mysqli_fetch_array($no);
$kode = $kodeid['id'];

$urut = substr($kode, 6, 3);
$tambah = (int) $urut +1;

if (strlen($tambah) == 1) {
    $format = $tambah;
}else if(strlen($tambah) == 2) {
    $format = $tambah;
}else{
    $format = $tambah;
} 
?>