<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<h5 class="card-header c_header">Contact Us</h5>
			<div class="card-body contact-right-area">
				<div class="contact-right">
					<div class="single-contact">
						<div class="contact-icon">
							<i class="lni-map-marker"></i>
						</div>
						<p><?php if($address && isset($address)){ echo $address->value; }?></p>
					</div>
					<div class="single-contact">
						<div class="contact-icon">
							<i class="lni-envelope"></i>
						</div>
						<p><a href="#"><?php if($email && isset($email)){ echo $email->value; }?></a></p>
					</div>
					<div class="single-contact">
						<div class="contact-icon">
							<i class="lni-phone-handset"></i>
						</div>
						<p><a href="#"><?php if($phone && isset($phone)){ echo $phone->value; }?></a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="mapouter sidebar_padding">
			<div class="gmap_canvas">
				<iframe style="width: 100%; height: auto; min-height: 350px;"  id="gmap_canvas" src="https://maps.google.com/maps?q=link%20up%20technology&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
				<a href="https://www.embedgooglemap.net"></a>
			</div>
			<style>.mapouter{text-align:left;height:150px;width:100%;}.gmap_canvas {overflow:hidden;background:none!important;height:200px;width:100%;}</style>
		</div>
	</div>
</div>