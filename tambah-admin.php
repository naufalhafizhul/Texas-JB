<?php 
	session_start();
	include 'db.php';
	if($_SESSION['status_login'] != true){
		echo '<script>window.location="login.php"</script>';
	}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Tambah Admin Baru</title>
	<link rel="stylesheet" type="text/css" href="css/style.css?v=<?php echo time(); ?>">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
	<!-- header -->
	<header>
		<div class="container">
		<h1 onclick="location.href='dashboard.php'">Petsqu Shop</h4>
			<ul>
				<!-- <li><a href="dashboard.php">Dashboard</a></li> -->
				<li><a href="profil.php">Profil</a></li>
				<!-- <li><a href="data-kategori.php">Data Kategori</a></li>
				<li><a href="data-produk.php">Data Produk</a></li> -->
				<li><button class="keluar-btn" onclick="location.href='keluar.php'">Keluar</button></li>
			</ul>
		</div>
	</header>

	<!-- content -->
	<div class="section">
		<div class="container">
			<h3>Tambah Admin Baru</h3>
			<div class="box">
				<form action="" method="POST">
					<input type="text" name="nama" placeholder="Nama Lengkap" class="input-control" value="" required>
					<input type="text" name="user" placeholder="Username" class="input-control" value="" required>
                    <input type="password" name="password" placeholder="Password" class="input-control" value="" required>
					<input type="text" name="hp" placeholder="No Hp" class="input-control" value="" required>
					<input type="email" name="email" placeholder="Email" class="input-control" value="" required>
					<input type="text" name="alamat" placeholder="Alamat" class="input-control" value="" required>
					<input type="submit" name="submit" value="Tambah Admin" class="tmbh-btn" style="margin-top: 0;">
				</form>
				<?php 
					if(isset($_POST['submit'])){

						$nama 	= ucwords($_POST['nama']);
						$user 	= $_POST['user'];
                        $password = $_POST['password'];
						$hp 	= $_POST['hp'];
						$email 	= $_POST['email'];
						$alamat = ucwords($_POST['alamat']);

						$insert = mysqli_query($conn, "INSERT INTO tb_admin VALUE(
                                        null,
										'".$nama."',
										'".$user."',
                                        '".$password."',
										'".$hp."',
										'".$email."',
										'".$alamat."'
										 )"
                                    );
						if($insert){
							echo '<script>alert("Berhasil Menambah Admin")</script>';
							echo '<script>window.location="dashboard.php"</script>';
						}else{
							echo 'gagal '.mysqli_error($conn);
						}

					}
				?>
			</div>
        </div>
    </div>
    <footer>
		<div class="container">
			<small>Copyright &copy; 2022 - PetsQu Shop</small>
		</div>
	</footer>
</body>