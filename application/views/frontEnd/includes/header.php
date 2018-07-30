<?php //echo $this->uri->uri_string(); echo strpos($this->uri->uri_string(), 'category')?>

<header id="header-wrap">
	<div class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-md-9 col-xs-12">

					<ul class="links clearfix">
						<li><i class="lni-phone-handset"></i><?php if($phone && isset($phone)){echo $phone->value; }?></li>
						
						<li><a href="#"><i class="lni-envelope"></i><?php if($email && isset($email)){echo $email->value; }?> </a></li>
					</ul>

				</div>
				
			</div>
		</div>
	</div>
	<style type="text/css">
		.logo{width: 100px; float: left; padding-top: 5px;}

		@media only screen and (max-width: 420px) {
		    .logoName {
		        display: none;
		    }
		    .logo{
		    	width: 60px;
		    	height: 40px;
		    }
		}
	</style>
	<nav class="navbar navbar-expand-lg navbar-light bg-white " data-toggle="sticky-onscroll">
		<div class="container">

			<div class="navbar-header">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navbar" aria-controls="main-navbar" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
					<span class="lin-menu"></span>
				</button>
				<a class="navbar-brand" href="<?= base_url(); ?>" style="">
					<?php if($logo && isset($logo)): $image =base_url().$logo->value; ?>
						<img class="logo" src="<?= $image; ?>" > 
					<?php endif;?>
						<h3 class="logoName" style="color: #07ab48; padding-left: 
						5px; float: left; line-height: 70px;">Momen Enterprise</h3>
					
				</a>
			</div>
			<div class="collapse navbar-collapse" id="main-navbar" style="padding-left: 20px!important;">
				<ul class="navbar-nav  justify-content-center" >
					<li class="nav-item <?= ($this->uri->uri_string() == '')?'active': '' ?>">
						<a class="nav-link" href="<?= base_url();?>">
							Home
						</a>
					</li>
					<li class="nav-item <?= ($this->uri->uri_string() == 'about-us')?'active': '' ?>">
						<a class="nav-link" href="<?= base_url();?>about-us">
							About Us
						</a>
					</li>
					<li class="nav-item dropdown <?= (strpos($this->uri->uri_string(), 'category') !== false )?'active': '' ?>">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Products <i class="fa fa-angle-down"></i>
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item active" href="<?= base_url(); ?>all/products">All Products</a>

							<?php if($categories && isset($categories)): foreach($categories as $category):?>
							<a class="dropdown-item active" href="<?= base_url();?>category/<?= $category->id; ?>"><?= $category->c_title; ?></a>
							<?php endforeach; endif; ?>
						</div>
					</li>
					

					<li class="nav-item <?= ($this->uri->uri_string() == 'our_service')?'active': '' ?>">
						<a class="nav-link" href="<?= base_url();?>our_service">
							Our Services
						</a>
					</li>


					<li class="nav-item <?= ($this->uri->uri_string() == 'photo')?'active': '' ?>">
						<a class="nav-link" href="<?= base_url();?>photo">
							Photo
						</a>
					</li>
					<li class="nav-item <?= ($this->uri->uri_string() == 'video')?'active': '' ?>">
						<a class="nav-link" href="<?= base_url();?>video">
							Video
						</a>
					</li>
					
					<li class="nav-item <?= ($this->uri->uri_string() == 'contact_us')?'active': '' ?>">
						<a class="nav-link" href="<?= base_url(); ?>contact_us">
							Contact Us
						</a>
					</li>

				</ul>
				
			</div>
		</div>

		<ul class="mobile-menu">
			<li class="<?= ($this->uri->uri_string() == '')?'active': '' ?>">
				<a  href="<?= base_url();?>">
					Home
				</a>
			</li>
			<li class="<?= ($this->uri->uri_string() == 'about-us')?'active': '' ?>">
				<a  href="<?= base_url();?>about-us">
					About Us
				</a>
			</li>
			<li class="<?= (strpos($this->uri->uri_string(), 'category') !== false )?'active': '' ?>">
				<a href="#">
					Products
				</a>
				<ul class="dropdown">
					<?php if($categories && isset($categories)): foreach($categories as $category):?>
						<li><a href="<?= base_url();?>category/<?= $category->id; ?>"><?= $category->c_title; ?></a></li>
					<?php endforeach; endif; ?>
					
				</ul>
			</li>
			<li class="<?= ($this->uri->uri_string() == 'our_service')?'active': '' ?>">
				<a  href="<?= base_url();?>our_service">
					Our Services
				</a>
			</li>
			<li class="<?= ($this->uri->uri_string() == 'photo')?'active': '' ?>">
				<a  href="<?= base_url();?>photo">
					Photo
				</a>
			</li>
			<li class="<?= ($this->uri->uri_string() == 'video')?'active': '' ?>">
				<a  href="<?= base_url();?>video">
					video
				</a>
			</li>
			
			<li class="<?= ($this->uri->uri_string() == 'contact_us')?'active': '' ?>">
				<a  href="<?= base_url(); ?>contact_us">
					Contact Us
				</a>
			</li>
		</ul>

	</nav>

	<div class="clearfix"></div>
</header>