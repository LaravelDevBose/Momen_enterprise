<footer id="footer" class="footer-area section-padding">
	<div class="container">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
					<h3 class="footer-titel">About <span>Us</span></h3>
					<p class="mb-2" style="color: #d6d5d5;">
						<?php if($about_us && isset($about_us)){ echo substr($about_us->value, 0, 550) ; }?>

					</p>
					<a href="<?= base_url();?>about-us" style="color: #f38c0c; float: right;">read more..</a>
				</div>
				
				<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
					<h3 class="footer-titel">Contact <span>Info</span></h3>
					<ul class="address"  >
						<li>
							<a href="#" style="color: #d6d5d5;"><i class="lni-map-marker"></i> 
								<?php if($address && isset($address)){ echo $address->value; }?>
							</a>
						</li>
						<li>
							<a href="#" style="color: #d6d5d5;"><i class="lni-phone-handset"></i>
								<?php if($phone && isset($phone)){ echo $phone->value; }?>
							</a>
						</li>
						<li>
							<a href="#" style="color: #d6d5d5;"><i class="lni-envelope"></i> 
								<?php if($email && isset($email)){ echo $email->value; }?>

							</a>
						</li>
					</ul>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
					<h3 class="footer-titel">Our<span> Location </span></h3>
					<div class="mapouter"><div class="gmap_canvas"><iframe width="300" height="300" id="gmap_canvas" src="https://maps.google.com/maps?q=link%20up%20technology&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net"></a></div><style>.mapouter{text-align:left;height:150px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:200px;width:100%;}</style></div>
				</div>
			</div>
		</div>
	</div>
</footer>

<section id="copyright">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<p style="text-align: left;">Copyright © 2018 <a rel="nofollow" href="<?= base_url();?>">Momen Enterprise</a> All Right Reserved</p>
			</div>

			<div class="col-md-6">
				<p style="text-align: right;">Design & Developed By:- <a rel="nofollow" href="http://linktechbd.com/">Link Up Technology Ltd.</a> </p>
			</div>
		</div>
	</div>
</section>