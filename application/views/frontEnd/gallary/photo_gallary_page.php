<div class="row" id="portfolio-section">
	<div class="col-lg-12">
		<div id="portfolio" class="row wow fadeInDown">
			<?php 
				if($images && isset($images)){ 
					foreach($images as $image){
						$image = base_url().$image->image;
						if(@getimagesize($image)){
			?>
			<div class="col-md-6 col-sm-6 col-lg-6 paginate mix development print ">
				<div class="portfolio-box">
					<div class="img-thumb">
						<img class="img-fluid" src="<?= $image;?>" alt="" style="height: 200px;">
					</div>
					<div class="overlay-box text-center">
						<a class="lightbox" href="<?= $image;?>">
							<i class="lni-zoom-in"></i>
						</a>
						
					</div>
				</div>
			</div>
			<?php } } }?>
		</div>
	</div>
	
</div>
<div class="row">
    <div id="page-nav"></div>

    <script>
        $(function($) {
                
                var pageParts = $(".paginate");
                
                var numPages = pageParts.length;
                
                var perPage = 18;
                
                pageParts.slice(perPage).hide();
                
                if(numPages > perPage){
                    $("#page-nav").pagination({
                        items: numPages,
                        itemsOnPage: perPage,
                        cssStyle: "light-theme",
                        
                        onPageClick: function(pageNum) {
                            
                            var start = perPage * (pageNum - 1);
                            var end = start + perPage;
                        
                            pageParts.hide()
                                     .slice(start, end).show();
                        }
                    });
                }
                
            });
    </script>
</div>