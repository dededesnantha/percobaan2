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


//menampilkan jumlah (Count) judul per kategori
$sql ="SELECT a.id_user, a.nama, COUNT(b.id_user) as jml2
	FROM t_user a left outer join t_buku b 
	on a.id_user = b.id_user 
	WHERE a.status = 1
	group by a.id_user, a.nama
	order by a.nama";

//menjalankan query ke database
$hasil = mysqli_query($koneksi,$sql) or die (mysqli_error());

//result set lebih > 0 (query mengahasilkan record data)
if (mysqli_num_rows($hasil) > 0) {
	
	echo "<h1>Jumlah Buku yang diinput oleh user Aktif</h1>"; //caption
	
	//menampilkan jumlah data
	echo "<h2>Jumlah data: ". mysqli_num_rows($hasil)."</h2>";
	
	$counter = 1; //membuat nomor urut data
	//menampilkan record ke web (bentuk tabel)
	//membuat header tabel
	echo "<table border=\"1\">
			<tr>
				<th>No</th>
				<th>id user</th>
				<th>Nama user</th>
				<th>Jumlah Buku</th>
			</tr>";
	
	//membuat isi tabel dalam perulangan / looping
	while($data = mysqli_fetch_array($hasil)) { //array -> bisa menggunakan nama field/atribut bisa juga menggunakan indeks
		echo "<tr>
				<td>$counter</td>
				<td>
					$data[id_user]
				</td> <!-- menjadi link - clickable -->
				<td>$data[nama]
				</td> 
				<td class=\"center\">
					<a href=\"detil-kategori_user.php?id=$data[id_user]\"> $data[jml2] </a>
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