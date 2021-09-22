<?php 
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
    {   
header('location:login.php');
}
if($_POST){
	$correo=$_POST['email'];
	$totalprice=$_SESSION['tp'];
	$sql=mysqli_query($con,"insert into ventas (ClaveTransaccion,PaypalDatos,Correo,Total,status) 
	values('".$_SESSION['id']."','','$correo','$totalprice','pendiente')");
	$idVenta=mysqli_query($con,"SELECT MAX(id_tabla) AS id FROM ventas");
	$_SESSION['msg']="Registro ingresado !!";
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

	    <title>Tienda Virtual Platea21 | Método de Pago</title>
	    <link rel="stylesheet" href="assets/css/bootstrap.min1.css">
	    <link rel="stylesheet" href="assets/css/main3.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
		<link rel="stylesheet" href="assets/css/config.css">

		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<link href='https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;700&display=swap	' rel='stylesheet' type='text/css'>		
		<link rel="shortcut icon" href="assets/iconoo.ico">
	</head>
    <body class="cnt-home">
	
		
<header class="header-style-1">
<?php include('includes/top-header.php');?>
<?php include('includes/main-header.php');?>
<?php include('includes/menu-bar.php');?>
</header>

<!-- Include the PayPal JavaScript SDK -->
<!--<script src="https://www.paypal.com/sdk/js?client-id=Abe_jYSD8dmUfLO1yjhAlYu5U0b9nAtZhDVO2U5CoXnCn0CiriBl4xCI8W8bzvqCDGHDD4_XxD7nIBtA&enable-funding=venmo&currency=USD" data-sdk-integration-source="button-factory"></script>-->
<script src="https://www.paypal.com/sdk/js?client-id=AdHjve9QthZqd3p9WBq3kR-xQKLHL7KSybFA4b5A0EuLDD5OPmtEKmU1p8ZBKoHKoZHVDV0H7WswO0nt&currency=USD"></script>

<style>
        /* Media query for mobile viewport */
        @media screen and (max-width: 400px) {
            #paypal-button-container {
                width: 100%;
            }
        }
        
        /* Media query for desktop viewport */
        @media screen and (min-width: 400px) {
            #paypal-button-container {
                width: 250px;
				display: inline-block;
            }
        }
    </style>

<div class="jumbotron text-center">
<h1 class="display-4">¡Paso Final !</h1>
<hr class="my-4">
Estas a punto de pagar con paypal la cantidad de:<span class="inner-left-md"><?php echo $_SESSION['tp']="$","$totalprice"; ?></span>
<br/>
<div id="paypal-button-container"></div>
<br/>
<strong>(Para aclaraciones :producto.hogar25@gmail.com)</strong>
</div>

<script>
        // Render the PayPal button into #paypal-button-container
        paypal.Buttons({
			style: {
                layout: 'horizontal'
            },

            createOrder: function(data, actions) {
                return actions.order.create({
                    purchase_units: [{
                        amount: {value: '<?php echo $_SESSION['tp']="$totalprice"; ?>'},
						custom: "<?php echo $_SESSION['id'];?>#<?php echo openssl_encrypt($idVenta,COD,KEY);?>"
                    }]
                });
            },

            // Finalize the transaction
            onApprove: function(data, actions) {
                return actions.order.capture().then(function(orderData) {
                    // Successful capture! For demo purposes:
                    console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
                    var transaction = orderData.purchase_units[0].payments.captures[0];
					window.location="verificador.php?id="+transaction.id+"&status="+transaction.status;
                    //alert('Transaction '+ transaction.status + ': ' + transaction.id + '\n\nSee console for all available details');
                    // Replace the above to show a success message within this page, e.g.
                    // const element = document.getElementById('paypal-button-container');
                    // element.innerHTML = '';
                    // element.innerHTML = '<h3>Thank you for your payment!</h3>';
                    // Or go to another URL:  actions.redirect('thank_you.html');
                });
            }
    	}).render('#paypal-button-container');
</script>


		<!-- ============================================== BRANDS CAROUSEL ============================================== -->
<?php echo include('includes/brands-slider.php');?>
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->

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




