<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title><?php if(isset($title)){echo $title; }else{ echo 'Momen Enterprise'; }?></title>

	<link rel="stylesheet" type="text/css" href="<?= base_url();?>libs/frontEnd/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();?>libs/frontEnd/fonts/line-icons.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();?>libs/frontEnd/css/slicknav.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();?>libs/frontEnd/css/ion.rangeSlider.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();?>libs/frontEnd/css/ion.rangeSlider.skinFlat.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();?>libs/frontEnd/css/nivo-lightbox.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();?>libs/frontEnd/css/animate.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();?>libs/frontEnd/css/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();?>libs/frontEnd/css/main.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();?>libs/frontEnd/css/responsive.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url();?>libs/frontEnd/css/style.css">
	<link href="<?= base_url();?>libs/frontEnd/simplePagination.css" rel="stylesheet">
	<script src="<?= base_url();?>libs/frontEnd/js/jquery-min.js"></script>

</head>
<body class="">
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = 'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v3.1';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<?php $this->load->view('frontEnd/includes/header')?>
	<?php 
		if($this->uri->uri_string() =='' || $this->uri->uri_string() == 'index'){
			$this->load->view('frontEnd/includes/slider');
		}
	?>

	<section class=" property section-padding">
		<div class=" container">
			<div class="row ">
				<?php $this->load->view('frontEnd/includes/left_sidebar');?>
				<div class="col-lg-6">
					<?php if(isset($page_path)){
						$this->load->view($page_path, true);
					}
					?>
					
				</div>
				<?php $this->load->view('frontEnd/includes/right_sidebar');?>
				
			</div>
		</div>
		
	</section>

	<?php $this->load->view('frontEnd/includes/footer');?>
	
	
	<script src="<?= base_url();?>libs/frontEnd/jquery.simplePagination.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/popper.min.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/bootstrap.min.js"></script>

	<script src="<?= base_url();?>libs/frontEnd/js/jquery.mixitup.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/jquery.counterup.min.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/ion.rangeSlider.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/jquery.parallax.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/waypoints.min.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/wow.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/owl.carousel.min.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/jquery.slicknav.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/nivo-lightbox.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/jquery.slicknav.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/main.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/form-validator.min.js"></script>
	<script src="<?= base_url();?>libs/frontEnd/js/contact-form-script.min.js"></script>
	
</body>

</html>
