
<!-- Bordered panel body table -->
<div class="panel panel-flat">
	<div class="panel-heading">
		<h5 class="panel-title">Gallery Information</h5>
		<div class="heading-elements">
			<ul class="icons-list">
        		<li><a data-action="collapse"></a></li>
        		<li><a data-action="reload"></a></li>
        		<li><a data-action="close"></a></li>
        	</ul>
    	</div>
	</div>

	<div class="panel-body">
		<form action="<?= base_url();?>gallary_image_store" method="POST" enctype="multipart/form-data">
			<div class="row">
				<div class="form-group">
					<label class="control-label col-lg-3">Gallery Image: </label>
					<div class="col-lg-6">
						<input type="file" class="file-styled" name="image" required accept="image/*">
					</div>

					<div class="col-lg-2">
						<button class="btn btn-sm btn-success" type="submit">Submit</button>
					</div>
				</div>
			</div>
		</form>
		<table class="table table-bordered table-hover datatable-highlight">
			<thead>
				<tr>
					<th style="width: 10px !important;">Sl. NO.</th>
					<th>Gallery Image</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody id="tbody">
				<?php $i =1; if($gallary_images):
					foreach ($gallary_images as $image):
				?>
				<tr>
					<td><?php echo $i++; ?></td>
					<td><img style="height: 200px; width: 100%; " src=" <?php echo base_url().$image->image;  ?>" alt="Gallery Image"></td>
					<td>
						<ul class="icons-list">
							
							<li class="btn btn-sm btn-danger"><a href="<?= base_url(); ?>gallery_image_delete/<?= $image->id; ?>" onclick="return confirm('Are You Sure Went to Delete This.')"><i class="icon-trash"></i></a></li>
							
						</ul>
					</td>
				</tr>
			<?php endforeach; endif; ?>
			</tbody>
		</table>
	</div>
</div>
<!-- /bordered panel body table -->

