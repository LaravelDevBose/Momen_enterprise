
<?php  if($sliders && isset($sliders)): ?>

<div id="main-slide" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
		<?php for($j = 0; $j < count($sliders); $j++){ ?>
		<li data-target="#main-slide" data-slide-to="<?= $j ?>" class="<?php if($j == 0){ echo 'active'; }?>"></li>
		<?php } ?>
	</ol>
	<div class="carousel-inner">
		<?php $i = 0; foreach($sliders as $slider): ?>
		<div class="carousel-item <?php if($i == 0){ echo 'active'; $i = 1; }?>">
			<?php $image = $slider->image; if(!@getimagesize($image)){ $image = base_url().'libs/upload_pic/no_image_available.jpeg' ;  }?>
			<img class="d-block w-100" src="<?= $image;?>" alt="<?= ucfirst($slider->s_title)?>">
			<div class="carousel-caption d-md-block">
				<!-- <h1 class="wow fadeInDown heading" data-wow-delay=".4s"><?= ucfirst($slider->s_title)?></h1>	 -->
			</div>
		</div>
		<?php endforeach;?>
		
	</div>
	<a class="carousel-control-prev" href="#main-slide" role="button" data-slide="prev">
		<span class="carousel-control" aria-hidden="true"><i class="lni-chevron-left"></i></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="carousel-control-next" href="#main-slide" role="button" data-slide="next">
		<span class="carousel-control" aria-hidden="true"><i class="lni-chevron-right"></i></span>
		<span class="sr-only">Next</span>
	</a>
</div>

<?php endif; ?>