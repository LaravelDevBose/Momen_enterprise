
<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<h5 class="card-header c_header">About Us</h5>
			<div class="card-body contact-right-area">
				<div  style=" width: 25%; float: left;">
					<div class="md_img">
						<?php if($md_image && isset($md_image)){
							$image = base_url().$md_image->value; 
							if(!@getimagesize($image)){$image = base_url().'libs/upload_pic/admin_image/admin_defult.jpg' ; }
						}?>
						<img  class="img-fluid" src="<?= $image?>" alt="<?= $md_name->value; ?>" style="margin: 0 auto;">
					</div>
				</div>
				<div style=" width: 65%; float: right;">
					<p class="md-name"><?= ucfirst($md_name->value); ?></p>
					<p class="md-des"><?= ucfirst($md_desig->value); ?></p>
				</div>
				<div style="clear: both; padding-top: 10px;">
					<p class="card-text"><?php if($md_message && isset($md_message)){echo $md_message->value; }?>
						
					</p>
				</div>
			</div>
		</div>
	</div>
</div>

