
<div class="row">
	<?php if($products && isset($products)): foreach($products as $product):?>
	<div class="col-lg-4 col-md-6 col-xs-12 paginate">
		<div class="property-main">
			<div class="property-wrap">
				<div class="property-item">
					<div class="item-thumb">
						<a class="hover-effect" href="<?= base_url();?>singel/product/<?= $product->id; ?>">
						<?php 
						$product_image = $this->db->where('product_id', $product->id)->limit(1)->get('product_images')->row();
						$image = base_url().$product_image->image_path; if(!@getimagesize($image)){$image=base_url().'libs/upload_pic/no_image_available.jpeg'; }
						?>
							<img class="img-fluid" src="<?= $image;?>" alt="<?= $product->product_name;?>">
						</a>
						
					</div>
					<div class="item-body">
						<h3 class="property-title"><a href="<?= base_url();?>singel/product/<?= $product->id; ?>"><?= ucfirst($product->product_name);?></a></h3>
						
						<div class="pricin-list">
							<div class="property-price">
								<span><?= number_format($product->price); ?> TK.</span>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php endforeach; endif; ?>
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
