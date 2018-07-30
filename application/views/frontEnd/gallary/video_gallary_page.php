<div class="row" id="portfolio-section">
	<div class="col-lg-12">
		<div id="portfolio" class="row wow fadeInDown">
			
			<?php if($videos && isset($videos)): foreach($videos as $video):?>

			<div class="col-md-6 col-sm-6 col-lg-6 mix development print">
				<div class="portfolio-box">
					<div class="img-thumb">
						<iframe allowfullscreen="" frameborder="0" style="width: 100%;" mozallowfullscreen="" src="<?= $video->video_link;?>" webkitallowfullscreen=""></iframe>
					</div>
					<!-- <div class="overlay-box text-center">
						<a class="lightbox" href="<?= $video->video_link;?>">
							<i class="lni-zoom-in"></i>
						</a>
						<h3>Project Title</h3>
					</div> -->
				</div>
			</div>
			<?php endforeach; endif; ?>
		</div>
	</div>
	
</div>