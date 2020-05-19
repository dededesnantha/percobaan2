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
require "koneksi.php"; //ketika ada kesalahan, maka tidak akan lanjut ke sintaks berikutnya


// untuk menampilkan tabel user
$sql1 = "select*from t_user";

//menjalankan query ke database
$hasil = mysqli_query($koneksi,$sql1) or die (mysqli_error($koneksi));


//result set lebih > 0 (query mengahasilkan record data)
if (mysqli_num_rows($hasil) > 0) {
	
	echo "<h1>DAFTAR TABEL KATEGORI</h1>"; //caption
	
	//menampilkan jumlah data
	echo "<h2>Jumlah data: ". mysqli_num_rows($hasil)."</h2>";
	
	$counter = 1; //membuat nomor urut data
	//menampilkan record ke web (bentuk tabel)
	//membuat header tabel
	echo "<table border=\"1\">
			<tr>
				<th>No</th>
				<th>Id_user</th>
				<th>Nama user</th>
				<th>Email</th>
				<th>Hp</th>
				<th>Status</th>
				<th>Foto</th>
			</tr>";
	//membuat isi tabel dalam perulangan / looping
	while($data = mysqli_fetch_array($hasil)) { //array -> bisa menggunakan nama field/atribut bisa juga menggunakan indeks
		//konversi status ke gambar 
		$img_sts = "ok.png";
		$tip_sts = "Aktif";
		if ($data["status"] == 0) {
			$img_sts="ko.png";
			$tip_sts="Non Aktif";}
		echo "<tr>
				<td>$counter</td>
				<td>$data[id_user]</td>
				<td class=\"center\">$data[nama]</td>
				<td class=\"center\">$data[email]</td>
				<td class=\"center\">$data[hp]</td>
				<td class=\"center\"><img src=\"$img_sts\" alt=\"status\" title=\"$tip_sts\"></td> <!-- akan tampil dalam bentuk gambar dengan tootip -->
				<td class=\"center\">$data[foto]</td>
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