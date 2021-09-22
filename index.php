<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_GET['action']) && $_GET['action']=="add"){
	$id=intval($_GET['id']);
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity']++;
	}else{
		$sql_p="SELECT * FROM products WHERE id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['id']]=array("quantity" => 1, "price" => $row_p['productPrice']);
			header('location:index.php');
		}else{
			$message="Product ID es invalido";
		}
	}
}


?>
<!DOCTYPE html>
<html lang="es">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>Página Principal Almacen Veicor</title>

	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min1.css">
	    
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main3.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="assets/css/config.css">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<link href='https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;700&display=swap	' rel='stylesheet' type='text/css'>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/iconoo.ico">

	</head>
    <body class="cnt-home">
	
		
	
		<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">
<?php include('includes/top-header.php');?>
<?php include('includes/main-header.php');?>
<?php include('includes/menu-bar.php');?>
</header>

<section class="aboutus" id="aboutus">
    <div class="container">
        <div class="heading text-center">
          <h2>Almacen Veicor</h2>
          <h3>Contamos con variedad de productos para el hogar a los mejores precios del mercado.
            Productos de temporada, cristalería, regalaría, juguetería, plásticos y desechables. </h3>
        </div>
    <div class="row">
        <div class="col-md-6">
        	<div class="papers text-center">
              <img src="img/1.jpg" alt=""><br/>
              <h4 class="">Grupo Almacen Veicor</h4>
              <p>
                La mejor atencion al cliente con los mejores estandares de calidad 
              </p>
            </div>
        </div>
          	<div class="col-md-6">
            <div class="papers text-center">
              <img src="img/2.jpg" alt=""><br/>
              <h4 class="">Horarios de atencion </h4>
              <p>
                Disfruta de las compras de tus productos favoritos en los horarios establecidos!!!
              </p>
            </div>
          	</div>
        </div>
    </div>
</section>
<!-- ============================================== HEADER : END ============================================== -->
<!--<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
		<div class="furniture-container homepage-container">
		<div class="row">
		
			<div class="col-xs-12 col-sm-12 col-md-3 sidebar">
				<!-- ================================== TOP NAVIGATION ================================== -->
	<!--<?php include('includes/side-menu.php');?>-->
<!-- ================================== TOP NAVIGATION : END ================================== -->
			</div><!-- /.sidemenu-holder -->	
			
			<!--<div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
			========================================== SECTION – HERO ========================================= -->
			
<!--<div id="hero" class="homepage-slider3">
	<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
		<div class="full-width-slider">	
			<div class="item" style="background-image: url(assets/images/sliders/slider1.png);">
				<!-- /.container-fluid -->
			<!--</div><!-- /.item -->
		<!--</div><!-- /.full-width-slider -->
	    
	    <!--<div class="full-width-slider">
			<div class="item full-width-slider" style="background-image: url(assets/images/sliders/slider2.png);">
			</div><!-- /.item -->
		<!--</div><!-- /.full-width-slider -->

	<!--</div><!-- /.owl-carousel -->
<!--</div>
			
<!-- ========================================= SECTION – HERO : END ========================================= -->	
				<!-- ============================================== INFO BOXES ============================================== -->

<!-- ============================================== INFO BOXES : END ============================================== -->		
			</div><!-- /.homebanner-holder -->
			
		</div><!-- /.row -->

		<!-- ============================================== SCROLL TABS ============================================== -->
		
			
<?php
$ret=mysqli_query($con,"select * from products");
while ($row=mysqli_fetch_array($ret)) 
{
	# code...


?>

						    	
				

			                        		   
		
		
		
	<?php } ?>

			


		<?php
$ret=mysqli_query($con,"select * from products where category=3");
while ($row=mysqli_fetch_array($ret)) 
{
	# code...


?>

						    	
		
	<?php } ?>
	
		
		<?php
$ret=mysqli_query($con,"select * from products where category=5");
while ($row=mysqli_fetch_array($ret)) 
{
?>

	<?php } ?>
	

	   
<?php
$ret=mysqli_query($con,"select * from products where category=4 and subCategory=4");
while ($row=mysqli_fetch_array($ret)) 
{
?>



<?php }?>

	
	<?php
$ret=mysqli_query($con,"select * from products where category=4 and subCategory=6");
while ($row=mysqli_fetch_array($ret)) 
{
?>



<?php }?>

		
	
			<?php
$ret=mysqli_query($con,"select * from products where category=6");
while ($row=mysqli_fetch_array($ret)) 
{
	# code...


?>
				
											</div>
				</div><?php } ?>
							
<!--?php include('includes/brands-slider.php');?-->
</div>
</div>
<?php include('includes/footer.php');?>
	
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	
	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>

	<!-- For demo purposes – can be removed on production -->
	
	<script src="switchstylesheet/switchstylesheet.js"></script>
	
	<script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	<!-- For demo purposes – can be removed on production : End -->

	

</body>
</html>