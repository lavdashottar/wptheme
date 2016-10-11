<?php

add_action( 'wp_enqueue_scripts', 'parent_theme_styles' );
function parent_theme_styles() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );
    wp_enqueue_style( 'boost-style', get_stylesheet_directory_uri() . '/css/bootstrap.min.css' );
}


function my_scripts_method() {
    wp_enqueue_script(
        'custom-script',
        get_stylesheet_directory_uri() . '/js/bootstrap.min.js',
        array( 'jquery' )
    );
}

add_action( 'wp_enqueue_scripts', 'my_scripts_method' );

add_action( 'init', 'create_post_type' );

function create_post_type() {
  register_post_type( 'wp_product',
    array(
      'labels' => array(
        'name' => __( 'Products' ),
        'singular_name' => __( 'Product' )
      ),
      'public' => true,
      'has_archive' => true,
	  'taxonomies'  => array( 'category' ),
	  'supports' => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'trackbacks', 'custom-fields', 'comments', 'revisions', 'post-formats' ),
    )
  );
}


// lav code starts for custom field //

add_action( 'add_meta_boxes', 'ld_meta_box_add' ); 
function ld_meta_box_add()
{
    add_meta_box( 'my-meta-box-id', 'Product Details', 'ld_meta_box_cb', 'wp_product', 'normal', 'high' );
}


function ld_meta_box_cb()
{
    global $post;
    $values = get_post_custom( $post->ID );
	$price = isset( $values['my_meta_box_text_price'] ) ? esc_attr( $values['my_meta_box_text_price'][0] ) :”;
	$sale_price = isset( $values['my_meta_box_text_sale_price'] ) ? esc_attr( $values['my_meta_box_text_sale_price'][0] ) :”;
	$utube = isset( $values['my_meta_box_text_utube'] ) ? esc_attr( $values['my_meta_box_text_utube'][0] ) :”;
	//$selected = isset( $values['my_meta_box_select'] ) ? esc_attr( $values['my_meta_box_select'][0] ) :”;
    $check = isset( $values['my_meta_box_check'] ) ? esc_attr( $values['my_meta_box_check'][0] ) : '';
     
    
    wp_nonce_field( 'my_meta_box_nonce', 'meta_box_nonce' );
    ?> 
    <p>
        <label for="my_meta_box_text_price">Price</label>
        <input type="number" name="my_meta_box_text_price" id="my_meta_box_text_price" value="<?php echo $price; ?>" />
    </p> 
	
	<p>
        <label for="my_meta_box_text_sale_price">Sale Price</label>
        <input type="number" name="my_meta_box_text_sale_price" id="my_meta_box_text_sale_price" value="<?php echo $sale_price; ?>" />
    </p>
	
	<p>
        <label for="my_meta_box_text_utube">Youtube Video</label>
        <input type="text" name="my_meta_box_text_utube" id="my_meta_box_text_utube" value="<?php echo $utube; ?>" />
    </p>
	
     
    <!--<p>
        <label for="my_meta_box_select">is Sale</label>
        <select name="my_meta_box_select" id="my_meta_box_select">
            <option value="red" <?php selected( $selected, 'yes' ); ?>>Yes</option>
            <option value="blue" <?php selected( $selected, 'no' ); ?>>No</option>
        </select>
    </p>-->
     
    <p>
        <input type="checkbox" id="my_meta_box_check" name="my_meta_box_check" <?php checked( $check, 'on' ); ?> />
        <label for="my_meta_box_check">Is Sale</label>
    </p>
    <?php    
}



add_action( 'save_post', 'ld_meta_box_save' );
function ld_meta_box_save( $post_id )
{
    if( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
     
    
    if( !isset( $_POST['meta_box_nonce'] ) || !wp_verify_nonce( $_POST['meta_box_nonce'], 'my_meta_box_nonce' ) ) return;
    
    if( !current_user_can( 'edit_post' ) ) return;
     
    
    $allowed = array( 
        'a' => array( 
            'href' => array()
        )
    );
     
    if( isset( $_POST['my_meta_box_text_price'] ) )
        update_post_meta( $post_id, 'my_meta_box_text_price', wp_kses( $_POST['my_meta_box_text_price'], $allowed ) );
     
	if( isset( $_POST['my_meta_box_text_sale_price'] ) )
        update_post_meta( $post_id, 'my_meta_box_text_sale_price', wp_kses( $_POST['my_meta_box_text_sale_price'], $allowed ) );
	
    if( isset( $_POST['my_meta_box_text_utube'] ) )		
        update_post_meta( $post_id, 'my_meta_box_text_utube', wp_kses( $_POST['my_meta_box_text_utube'], $allowed ) );
         
    //if( isset( $_POST['my_meta_box_select'] ) )
       // update_post_meta( $post_id, 'my_meta_box_select', esc_attr( $_POST['my_meta_box_select'] ) );
         
    
    $chk = isset( $_POST['my_meta_box_check'] ) && $_POST['my_meta_box_check'] ? 'on' : 'off';
    update_post_meta( $post_id, 'my_meta_box_check', $chk );
}

// lav code ends for custom field //

include 'image_upload.php';





function single_product_shortcode( $atts ) {
	$atts = shortcode_atts(
		array(
			'product_id' => '',
			'bgcolor' => '',
		),
		$atts,
		'single_product_show'
	);

	$productHtml='';
	
	//if(isset($atts['product_id']) && $atts['product_id'] > 0){
		$postID=$atts['product_id'];
		$p_title = get_the_title($postID);
		$p_content = get_the_content($postID);
		$price = get_post_meta( $postID, 'my_meta_box_text_price', true );
		$sale_price = get_post_meta( $postID, 'my_meta_box_text_sale_price', true );
		$utube = get_post_meta( $postID, 'my_meta_box_text_utube', true ); 
		$is_sale= get_post_meta( $postID, 'my_meta_box_check', true );
		$image = wp_get_attachment_image_src( get_post_thumbnail_id( $postID ), 'single-post-thumbnail' );
		$productHtml.='<div class="shortcode_class" style="background-color:'.$atts['bgcolor'].'"><h2>'.$p_title.'</h2><div class="col-md-6"><img src="'.$image[0].'" alt="'.$p_title.'"/></div><div class="col-md-6"><h2>Product Description </h2><iframe src="https://www.youtube.com/embed/'.$utube.'"></iframe>
				<div class="product_info">
		<p>
			<label>Price</label>
			<span>Rs. '.$price.'</span>
		</p>
	</div>
		
		</div>';
		$productHtml.='</div>';
	//}
	
	return $productHtml;

}
add_shortcode('single_product_show', 'single_product_shortcode' );

// Remove admin bar 
add_action('after_setup_theme', 'remove_admin_bar');

function remove_admin_bar() {
	$user = wp_get_current_user();
	$wp_test_user = $user->user_nicename;
	
if ($wp_test_user=='wp-test') {
  show_admin_bar(false);
}
} 



// Json api

function wp_product_endpoint() {

	add_rewrite_tag( '%wp_product%', '([^&]+)' );
	add_rewrite_rule( 'myapi/category/([^&]+)/?', 'index.php?$matches[1]', 'top' );

}
add_action( 'init', 'wp_product_endpoint' );

function wp_product_endpoint_data() {

	global $wp_query;

	$wp_product_cat = $wp_query->get( 'wp_product' );

	if ( ! $wp_product_cat ) {
		return;
	}

	$wp_product_data = array();
	

	$args = array(
		'post_type'      => 'wp_product',
		'cat'    => $wp_product_cat,
	);
	$wp_product_query = new WP_Query( $args );
	//print_r($wp_product_query);
	if ( $wp_product_query->have_posts() ) : while ( $wp_product_query->have_posts() ) : $wp_product_query->the_post();
		$postId=get_the_ID();
		$img_id = get_post_thumbnail_id();
		$img = wp_get_attachment_image_src( $img_id, 'full' );
		$wp_product_data[] = array(
			'link'  => esc_url( $img[0] ),
			'title' => get_the_title(),
			'content' => get_the_content(),
			'price' => get_post_meta( $postId, 'my_meta_box_text_price', true ),
			'sale price' => get_post_meta( $postId, 'my_meta_box_text_sale_price', true ),
			'you tube' => get_post_meta( $postId, 'my_meta_box_text_utube', true ),
			'is sale' => get_post_meta( $postId, 'my_meta_box_check', true ),
			
		);
	endwhile; wp_reset_postdata(); endif; 

	wp_send_json( $wp_product_data );
}
add_action( 'template_redirect', 'wp_product_endpoint_data' );