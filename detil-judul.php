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
	$id_judul = $_GET['id'];

	//menampilkan data nama judul
	$sql1 = "SELECT judul from t_judul where (id_judul = '$id_judul')";

	//menjalankan query ke database
	$hasil1 = mysqli_query($koneksi, $sql1) or die(mysqli_error($koneksi));

	//menampilkan SEBUAH data hasil query
	$judul = mysqli_fetch_row($hasil1);
	echo "<h1>Daftar Buku dengan Judul: $judul[0] </h1>";


	//query SQL Join tabel Judul dan User (menggunakan alias)
	$sql2 = "SELECT *, a.status as xSts
		from t_buku a inner join t_user b
		on a.id_user = b.id_user
		where (id_judul = '$id_judul')";

	//menjalankan query ke database
	$hasil2 = mysqli_query($koneksi, $sql2) or die(mysqli_error($koneksi));

	//result set lebih > 0 (berisi data)
	if (mysqli_num_rows($hasil2) > 0) {

		//menampilkan jumlah data
		echo "<h2>Jumlah data: " . mysqli_num_rows($hasil2) . "</h2>";

		$counter = 1; //membuat nomor urut data
		//menampilkan record ke web (bentuk tabel)
		//membuat header tabel
		echo "<table border=\"1\">
			<tr>
				<th>No</th>
				<th>Kode Buku</th>
				<th>User Input</th>
				<th>Tgl Input</th>
				<th>Status</th>
			</tr>";

		//membuat isi tabel
		while ($data = mysqli_fetch_array($hasil2)) { //array -> bisa menggunakan nama field/atribut bisa juga menggunakan indeks
			//konversi status ke teks
			$sts = "Aktif";
			$img_sts = "ok.png";
			if ($data["xSts"] == 0) {
				$sts = "Non aktif";
				$img_sts = "ko.png";
			}

			$date = date_create($data["tgl_input"]);
			$xTgl = date_format($date, "d M Y");

			echo "<tr>
				<td>$counter</td>
				<td>$data[id_buku]</td>
				<td>
					$data[nama]
					($data[id_user])
				</td>
				<td>
					$xTgl
				</td>
				<td class=\"center\">
					<img src=\"$img_sts\" alt=\"status\" title=\"$sts\">
				</td>
			  </tr>";
			$counter++; //increment
		}

		//tutup tag table
		echo "</table>";
	} else {
		echo "<h3>Data tidak tersedia!</h3>";
	}

	//menutup koneksi
	mysqli_close($koneksi);
	?>
	<a href="index6.php">Kembali</a>

	<a href="">hallo ha</a>

</body>

</html>