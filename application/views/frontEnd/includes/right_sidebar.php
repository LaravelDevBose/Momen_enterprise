<div class="col-lg-3">

	<div>
		<div class="card">
			<h5 class="card-header c_header"><?= ucfirst($md_desig->value); ?> Message</h5>
			<div class="card-body " style="padding:5px;">
				<div  style=" width: 35%; float: left;">
					<div class="md_img">
						<?php if($md_image && isset($md_image)){
							$image = base_url().$md_image->value; 
							if(!@getimagesize($image)){$image = base_url().'libs/upload_pic/admin_image/admin_defult.jpg' ; }
						}?>
						<img  class="img-fluid" src="<?= $image?>" alt="<?= $md_name->value; ?>" style="margin: 0 auto; ">
					</div>
				</div>
				<div style=" width: 65%; float: right;">
					<p class="md-name"><?= ucfirst($md_name->value); ?></p>
					<p class="md-des"><?= ucfirst($md_desig->value); ?></p>
				</div>
				<div style="clear: both; padding-top: 10px;">
					<p class="card-text"><?php if($md_message && isset($md_message)){echo substr($md_message->value, 0, 350); }?>
						
					</p>
				</div>
				<a href="<?= base_url(); ?>md_message_page" style="float: right;">Read More</a>
			</div>
		</div>
	</div>


	
	<div class="sidebar_padding">
		<div class="card">
			<h5 class="card-header c_header">Photo Gallery</h5>
			<div style="width: 100%; float: left;">
				<?php if($photos && isset($photos)): foreach($photos as $photo): ?>
					<?php $image = base_url().$photo->image; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg' ;  } ?>
				<div style="width: 50%; float: left;">
					<div style="margin: auto; padding: 6px;">
						<a class="lightbox" href="<?= $image;?>" title="<?= $photo->g_title; ?>">
							<img style="width: 100%; height: 70px;  border: 3px solid green; border-radius: 3px;" src="<?= $image;?>" >
						</a> 
					</div>
					
				</div>

				<?php endforeach; endif;?>
				
			</div>	
		</div>
	</div>
	<div class="sidebar_padding">
		<div class="card">
			<h5 class="card-header c_header">Our Facebook Page</h5>
			<div class="card-body fb_page">
				<div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/facebook" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote></div>
				
			</div>
		</div>
	</div>
</div>