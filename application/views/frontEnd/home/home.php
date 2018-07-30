<div class="row">
	<div class="col-lg-12">
		<div class="blog-post single-post">

			<div class="content">
				<h2 class="text-center">Well Come To Momen Enterprise</h2>
				
				<p class="mb-2"><?php if($wc_note && isset($wc_note)){ echo ucfirst($wc_note->value); }?></p>
				
			</div>
		</div>
	</div>
</div>
<div class="row">

	<?php if($products && isset($products)): foreach($products as $product):?>
	<div class="col-lg-4 col-md-6 col-xs-12">
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
