<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Menampilkan data (Procedural)</title>
<link type="text/css" href="style.css" rel="stylesheet">
</head>

<body>

<?php
//menggunakan koneksi pada file lain
include "koneksi.php";

//mengambil parameter pada URL
$id_kat=$_GET['id'];

//menampilkan data nama kategori
$sql1="SELECT kategori from t_kategori where (id_kategori = '$id_kat')";

//menjalankan query ke database
$hasil1 = mysqli_query($koneksi,$sql1) or die (mysqli_error($koneksi));

//menampilkan SEBUAH data hasil query
$nmkategori=mysqli_fetch_row($hasil1);
echo "<h1>Daftar Judul dengan Kategori: $nmkategori[0] </h1>";


//query SQL Join tabel Judul dan Kategori (menggunakan alias)
$sql2="SELECT *, a.status as xSts from t_judul a 
		inner join t_kategori b 
		on a.id_kategori=b.id_kategori 
		where (a.id_kategori = '$id_kat')";
			

//menjalankan query ke database
$hasil2 = mysqli_query($koneksi,$sql2) or die (mysqli_error($koneksi));
	
//result set lebih > 0 (berisi data)
if (mysqli_num_rows($hasil2) > 0) {
		
	//menampilkan jumlah data
	echo "<h2>Jumlah data: ". mysqli_num_rows($hasil2)."</h2>";
	
	$counter = 1; //membuat nomor urut data
	//menampilkan record ke web (bentuk tabel)
	//membuat header tabel
	echo "<table border=\"1\">
			<tr>
				<th>No</th>
				<th>Judul</th>
				<th colspan=\"2\">Status</th>
			</tr>";
	
	//membuat isi tabel
	while($data = mysqli_fetch_array($hasil2)) { //array -> bisa menggunakan nama field/atribut bisa juga menggunakan indeks
		//konversi status ke teks
		$sts = "Aktif";
		$img_sts = "ok.png";
		if ($data["xSts"] == 0) {
			$sts="Non aktif";
			$img_sts="ko.png";}
		echo "<tr>
				<td>$counter</td>
				<td>$data[judul]</td>
				<td>
					<img src=\"$img_sts\" alt=\"status\" title=\"$sts\">
				</td>
			  </tr>";
		$counter++;//increment
	}
	
	//tutup tag table
	echo "</table>";
	
	
} else {
	echo "<h3>Data tidak tersedia!</h3>";
}

//menutup koneksi
mysqli_close($koneksi);
?>

<a href="index5.php">Kembali</a>
</body>
</html>