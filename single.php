<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

?>

<?php

$category = get_the_category(); 
$cat_par=$category[0]->parent;
if(in_category(2) || in_category(3) || in_category(4) )
{
include ('single-product-details.php');
}
else
{
    include ('single-main-details.php');
}

?>
