<div class="col-lg-12 col-md-12 col-xs-12">
	<div class="property-slider">
		<div id="property-slider" class="owl-carousel owl-theme">
			<?php 
				$product_images = $this->db->where('product_id', $product->id)->get('product_images')->result();
				if($product_images && isset($product_images)){
					foreach ($product_images as $p_image) {
						$image = base_url().$p_image->image_path;
						if(@getimagesize($image)){
				
			?>
				<div class="item">
					<img src="<?= $image;?>" alt="<?= $product->product_name; ?>">
				</div>

			<?php } } }?>
		</div>
	</div>
	<div class="inner-box short-info">
		<h2 class="desc-title">Quick Summary</h2>
		<ul class="additional-details">
			<li>
				<strong>Product Id:</strong>
				<span><?= $product->product_id; ?></span>
			</li>
			<li>
				<strong> Product Name:</strong>
				<span><?= ucfirst($product->product_name); ?></span>
			</li>
			<li>
				<strong>Category:</strong>
				<span><?= ucfirst($product->c_title); ?></span>
			</li>
			<li>
				<strong>Price:</strong>
				<span><?= number_format($product->price); ?> Tk</span>
			</li>
			
		</ul>
	</div>
	<div class="inner-box property-dsc">
		<h2 class="desc-title">Product Description</h2>
		<p><?= $product->details; ?></p>
	</div>
	
	
</div>