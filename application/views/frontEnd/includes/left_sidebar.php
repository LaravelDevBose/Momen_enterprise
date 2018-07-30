<div class="col-lg-3">
	<div>
		<div class="card">
			<h5 class="card-header c_header">Categories</h5>
			<?php if($categories && isset($categories)): ?>
			<ul class="list-group">
				<?php foreach($categories as $category):?>
				<li class="list-group-item"><a href="<?= base_url();?>category/<?= $category->id; ?>"><?= $category->c_title; ?></a></li>
				<?php endforeach;?>
			</ul>
			<?php endif;?>
		</div>
	</div>
	<div>
		<?php if($ads_images && isset($ads_images)): foreach($ads_images as $ads): ?>
		<div class="ads sidebar_padding">
			<?php $image = base_url().$ads->image_path; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg' ;  }?>
			<img class="img-fluid" src="<?= $image;?>" alt="<?= $ads->a_title; ?>" style="width: 100%; border-radius: 5px;">
		</div>
		<?php endforeach; endif;?>
	</div>
	<div>
		<div class="card">
			<h5 class="card-header c_header">Videos </h5>
			<?php if($y_videos && isset($y_videos)): foreach ($y_videos as $video):?>
			<div class="col-md-12">
				<iframe allowfullscreen="" frameborder="0" style="width: 100%;" mozallowfullscreen="" src="<?= $video->video_link;?>" webkitallowfullscreen=""></iframe>
			</div>
			<?php endforeach; endif; ?>
		</div>
	</div>
</div>