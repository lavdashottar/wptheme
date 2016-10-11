<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>
<?php 
	while ( have_posts() ) : the_post(); ?>


<section>
<div class="container">
<div class="row">
<?php
$price = get_post_meta( $post->ID, 'my_meta_box_text_price', true ); 
$sale_price = get_post_meta( $post->ID, 'my_meta_box_text_sale_price', true ); 
$utube = get_post_meta( $post->ID, 'my_meta_box_text_utube', true );  
$is_sale= get_post_meta( $post->ID, 'my_meta_box_check', true );  
?>


<div class="col-md-6"><h2><?php the_title(); ?></h2><div claass="clearfix"></div>
<br/><br/><?php twentysixteen_post_thumbnail(); ?>
<?php $gallery_data = get_post_meta( $post->ID, 'gallery_data', true ); ?>
 <?php 
    if ( isset( $gallery_data['image_url'] ) ) 
    {
        for( $i = 0; $i < count( $gallery_data['image_url'] ); $i++ ) 
        { ?>
		<img src="<?php esc_html_e( $gallery_data['image_url'][$i] ); ?>" height="90" width="90" />
		<?php
		}
	}
        ?>
</div>

<div class="col-md-6">
<h2>Product Description </h2><?php the_content(); ?>
<iframe src="https://www.youtube.com/embed/<?php echo $utube; ?>??rel=0"></iframe>


	<?php //if($is_sale=='off'){ ?>
		<div class="product_info">
		<p>
			<label>Price</label>
			<span>Rs. <?php echo $price; ?></span>
		</p>
	</div>
	<?php //}  ?>
	<?php if($is_sale=='on'){ ?>
		<div class="product_info">
		<p>
			<label>Sale Price</label>
			<span>Rs. <?php echo $sale_price; ?></span>
		</p>
	</div>
		
	<?php } ?>
	</div>
	<h2>Related Post</h2>
	<?php

$related = get_posts( array( 'category__in' => wp_get_post_categories($post->ID), 'numberposts' => 2,'post_type' =>'wp_product', 'post__not_in' => array($post->ID) ) );
if( $related ) foreach( $related as $post ) {
setup_postdata($post); 
$image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' );
?>

 <ul> 
        <li class="col-sm-6">
        <a href="<?php the_permalink() ?>" rel="bookmark" title="<?php the_title(); ?>">
		<img src="<?php echo $image[0]; ?>"/>
		<?php the_title(); ?>
		</a>
            <?php the_content();
			?>
        </li> 
    </ul>   
<?php }
wp_reset_postdata(); ?>
	
</div>
</div>
</section>
<!--/ body content -->

<?php		

// End the loop.
endwhile; 

?>
<?php get_footer(); ?>
