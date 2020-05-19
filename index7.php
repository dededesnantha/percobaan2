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


//query SQL Join t_judul, t_kategori & t_buku (menggunakan alias)
// $sql ="select A.id_judul, a.judul, a.status, 
// 		B.kategori, count(c.id_buku) as xjml 
// 		from t_judul A inner join t_kategori B
// 		on A.id_kategori = B.id_kategori
// 		left outer join t_buku c
// 		on a.id_judul = c.id_judul
// 		group by A.id_judul, a.judul, a.status
// 		order by A.judul asc";

//query SQL Join t_judul, t_user & t_buku
// untuk menampilkan tabel buku
$sql1 = "select 
		t_buku.id_buku as id_buku,
		t_buku.tgl_input as tgl_input,
		t_buku.status as status,
		t_judul.judul as kategori_judul,
		t_user.id_user as id_user,
		t_user.nama as nama_user
		from t_buku
		inner join t_judul on t_buku.id_judul = t_judul.id_judul
		inner join t_user on t_buku.id_user = t_user.id_user";

//menjalankan query ke database
$hasil = mysqli_query($koneksi,$sql1) or die (mysqli_error($koneksi));


//result set lebih > 0 (query mengahasilkan record data)
if (mysqli_num_rows($hasil) > 0) {
	
	echo "<h1>DAFTAR TABEL BUKU</h1>"; //caption
	
	//menampilkan jumlah data
	echo "<h2>Jumlah data: ". mysqli_num_rows($hasil)."</h2>";
	
	$counter = 1; //membuat nomor urut data
	//menampilkan record ke web (bentuk tabel)
	//membuat header tabel
	echo "<table border=\"1\">
			<tr>
				<th>No</th>
				<th>Id_buku</th>
				<th>Nama Judul</th>
				<th>Status Buku</th>
				<th>Tanggal Input</th>
				<th>Id_User</th>
				<th>Nama</th>
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
				<td>$data[id_buku]</td>
				<td class=\"center\">$data[kategori_judul]</td>
				<td class=\"center\"><img src=\"$img_sts\" alt=\"status\" title=\"$tip_sts\"></td> <!-- akan tampil dalam bentuk gambar dengan tootip -->
				<td class=\"center\">$data[tgl_input]</td>
				<td class=\"center\">$data[id_user]</td>
				<td class=\"center\">$data[nama_user]</td>
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