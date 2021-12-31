<?php 
	include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1");
	$a = mysqli_fetch_object($kontak);
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Pancong Lumer Texas JB</title>
	<link rel="stylesheet" type="text/css" href="css/tentang.css?v=<?php echo time(); ?>">
	<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
	<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

</head>
<body>
	<!-- Navbar -->
	<header>
		<div class="container">
			<img class="logo" src="img/logo.svg" onclick="location.href='index.php'">	
			<ul>
				<li><a href="produk.php">Produk</a></li>
				<li><a href="tentang.php">Tentang</a></li>
				<Button class="btn" onclick="location.href='login.php'">Login</Button>
			</ul>
		</div>
	</header>

    <!-- JumboTron -->
    <section class="JumboTron">
        <div class="container">
            <h1 class="tentang">Tentang Kami</h1>
            <div class="container-jumbo-tron">
                <div class="left-side">
                <h3 class="pancong">Pancong Lumer Texas JB</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus nisi nulla maxime repellat perferendis. Eos non sapiente a iure eum, velit aperiam architecto aliquam ducimus quidem recusandae porro labore quaerat!</p>
                </div>
                <div class="right-side">
                <img src="img/image_9.jpg" alt="#" class="toko">
                </div>
            </div>
        </div>
    </section>

    <!-- Lokasi -->
    <div class="lokasi">
        <div class="container">
            <div class="judul-continer">
                <ion-icon name="location-sharp"></ion-icon>
                <h1 class="lokasi-kami">Lokasi Kami</h1>
            </div>
            <div class="container-lokasi">
                <div class="left-side">
                    <!-- <div id="googleMap" style="height:50px;"></div> -->
                    <div style="width:100%; background-color:gray;"></div>
                </div>
                <div class="right-side">
                    <h4></h4>
                    <p></p>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Footer -->
    <div class="footer">
		<div class="container">
			<h4>Alamat</h4>
			<p><?php echo $a->admin_address ?></p>

			<h4>Email</h4>
			<p><?php echo $a->admin_email ?></p>

			<h4>No. Hp</h4>
			<p><?php echo $a->admin_telp ?></p>
			<small>Copyright &copy; 2021 - Gunadarma</small>
		</div>
	</div>

    <!-- <script>
        function myMap() {
        var mapProp= {
            center:new google.maps.LatLng(51.508742,-0.120850),zoom:5,
        };
        var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
        }
    </script> -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDMJuF-z3aSG5CqWv1WS9tfy5UtA9KaQGo&callback=myMap"></script>
</body>
</html>
