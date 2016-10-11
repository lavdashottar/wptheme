<?php
/* 
Template Name: Home Page
*/

get_header(); ?>
<div class="homepagedata">
	<div class="container">
		<div class="row">
			<?php  query_posts('showposts=-1&post_type=wp_product');
			if(have_posts())
			{
				  while (have_posts()) : the_post(); 		 
				  $title=get_the_title();
				  $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' ); ?>
				  <?php $is_sale= get_post_meta( $post->ID, 'my_meta_box_check', true );  ?>
				<div class="all_products">
					<div class="col-md-4 col-xs-6">
						<?php if($is_sale=='on'){ ?> 
						<div class="sale_badge">SALE</div>
						<?php  } ?>
						<a href="<?php echo the_permalink(); ?>"> 
							<img class="img-responsive" src="<?php echo $image[0]; ?>" alt="<?php echo $title; ?>" />
							<p><?php echo $title; ?></p>
						</a>
					</div>	
					
				</div>		
				<?php		
				 endwhile;
			}
			wp_reset_query();		 
			?>
		</div>
	</div>
</div>
<br/>
<br/>
<?php get_footer(); ?>