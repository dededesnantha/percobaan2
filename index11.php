<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Menampilkan data (Procedural)</title>
<link type="text/css" href="style.css" rel="stylesheet">
</head>

<body>

<?php
require "menu.html";

//menggunakan koneksi pada file lain
require "koneksi.php";


//menampilkan jumlah (Count) buku per kategori
// $sql ="SELECT a.id_kategori, a.kategori, COUNT(b.id_buku) as jml2
// 	FROM t_kategori a left outer join t_judul b 
// 	on a.id_kategori = b.id_kategori 
// 	group by a.id_kategori, a.kategori
// 	order by a.kategori";


$sql1 = "SELECT DISTINCT t_kategori.id_kategori, t_kategori.kategori, 
       COUNT(t_kategori.id_kategori) as jml2
       FROM t_kategori 
       join t_judul on t_kategori.id_kategori = t_judul.id_kategori
       join t_buku on t_judul.id_judul = t_buku.id_judul
		group by t_kategori.id_kategori, t_kategori.kategori
		order by t_kategori.kategori";



//menjalankan query ke database
$hasil = mysqli_query($koneksi,$sql1) or die (mysqli_error());


//result set lebih > 0 (query mengahasilkan record data)
if (mysqli_num_rows($hasil) > 0) {
	
	echo "<h1>DAFTAR KATEGORI BUKU</h1>"; //caption
	
	//menampilkan jumlah data
	echo "<h2>Jumlah data: ". mysqli_num_rows($hasil)."</h2>";
	
	$counter = 1; //membuat nomor urut data
	//menampilkan record ke web (bentuk tabel)
	//membuat header tabel
	echo "<table border=\"1\">
			<tr>
				<th>No</th>
				<th>Nama Kategori</th>
				<th>Jumlah Buku</th>
			</tr>";
	
	//membuat isi tabel dalam perulangan / looping
	while($data = mysqli_fetch_array($hasil)) { //array -> bisa menggunakan nama field/atribut bisa juga menggunakan indeks
		echo "<tr>
				<td>$counter</td>
				<td>
					$data[kategori] 
				</td> <!-- menjadi link - clickable -->
				
				<td class=\"center\">
					 $data[jml2] 
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

</body>
</html>