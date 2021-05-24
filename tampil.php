<?php
	include "koneksi.php";
	$sel = "SELECT * FROM tbl_transaksi WHERE status='WAITING'";
	$data = $conn->query($sel);
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Pemesanan Makanan</title>
		<link href="css/style.css" rel="stylesheet"/>
		<link href="css/bootstrap.css" rel="stylesheet"/>
		<script src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/angular.min.js"></script>
		<script type="text/javascript">
		    var auto_refresh = setInterval(
		    function () {
					window.location = './tampil.php';
		      //  $('#load_content').load('tampil.php').fadeIn("slow");
		    }, 5000); // refresh setiap 10000 milliseconds

		</script>
	</head>
	<body>
		<div id="load_content">
			<div class="header">
				<div class="col-md-1">
					<img src="img/logo.png"/>
				</div>
				<div class="col-md-9">
					<h1>Sistem Pemesanan Makanan PT IFC</h1>
				</div>
				<div class="col-md-2">
					<button class="btn btn-danger glyphicon glyphicon-log-out">
						<a href="logout.php">LOGOUT</a>
					</button>
				</div>
			</div>
			<div id="wrapper">
				<div class="row">
					<?php
					$no=1;
					while($row = $data->fetch_array()){?>
					<form action="aksi.php?aksi=update" method="post">
					  <div class="col-sm-6 col-md-3">
					    <div class="thumbnail">
					      <div class="caption">
					        <h3><?php echo $no;?></h3>
					        	<table class="table table-striped">
											<tr>
												<td><b>Menu</b></td>
												<td><b>Qty</b></td>
											</tr>
											<tr>
												<?php if($row['fanta']){?>
													<td>Fanta</td>
													<td><?php echo $row['fanta'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['coca_cola']){?>
													<td>Coca Cola</td>
													<td><?php echo $row['coca_cola'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['pepsi']){?>
													<td>Pepsi</td>
													<td><?php echo $row['pepsi'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['ice_cream']){?>
													<td>Ice Cream</td>
													<td><?php echo $row['ice_cream'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['fried_chicken']){?>
													<td>Fried Chicken</td>
													<td><?php echo $row['fried_chicken'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['burger']){?>
													<td>Burger</td>
													<td><?php echo $row['burger'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['french_fries']){?>
													<td>French Fries</td>
													<td><?php echo $row['french_fries'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['spaghetti']){?>
													<td>Spaghetti</td>
													<td><?php echo $row['spaghetti'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<td>Waiting</td>
												<td>
													<a href="aksi.php?aksi=update&no=<?php echo $row['id_transaksi']; ?>">Selesai</a>
												</td>
											</tr>
										</table>
					      </div>
					    </div>
					  </div>
						<?php $no++; } ?>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>
