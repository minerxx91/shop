<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package pawsgang
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<header>
		<nav class="navbar navbar-expand-lg bg-light">
			<div class="container-fluid">
				<div class="row d-lg-none d-flex w-100">
					<div class="col-6">
								<a href="<?php echo get_home_url(); ?>">
									<img src="<?php echo get_template_directory_uri();?>/img/stiahnuť.jpg" alt="" class="d-flex justify-content-start">
								</a>
					</div>
					<div class="col-6 cart d-flex justify-content-end align-items-center py-2">
						<a href="<?php echo wc_get_cart_url(); ?>"><i class="bi bi-bag-dash p-2"></i></a>
						<a class="cart-customlocation" href="<?php echo wc_get_cart_url(); ?>" title="<?php _e( 'View your shopping cart' ); ?>"><?php echo sprintf ( _n( '%d item', '%d items', WC()->cart->get_cart_contents_count() ), WC()->cart->get_cart_contents_count() ); ?> – <?php echo WC()->cart->get_cart_total(); ?></a>
					</div>
				</div>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
				</button>
				<div class="d-flex justify-content-center flex-column d-lg-none m-auto w-75">
					<?php echo do_shortcode( '[aws_search_form]' ); ?>
				</div>
				<div class="collapse navbar-collapse" id="navbarNav">
					<div class="container">
						<div class="row d-lg-flex d-none">
							<div class="col-3">
								<a href="<?php echo get_home_url(); ?>">
									<img src="<?php echo get_template_directory_uri();?>/img/stiahnuť.jpg" alt="" class="d-flex justify-content-start">
								</a>
							</div>
							<div class="col-6 d-flex justify-content-center flex-column">
								<?php echo do_shortcode( '[aws_search_form]' ); ?>
							</div>
							<div class="col cart d-flex justify-content-center justify-content-md-end align-items-center pt-2">
								<a href="<?php echo wc_get_cart_url(); ?>"><i class="bi bi-bag-dash p-2"></i></a>
								<a class="cart-customlocation" href="<?php echo wc_get_cart_url(); ?>" title="<?php _e( 'View your shopping cart' ); ?>"><?php echo sprintf ( _n( '%d item', '%d items', WC()->cart->get_cart_contents_count() ), WC()->cart->get_cart_contents_count() ); ?> – <?php echo WC()->cart->get_cart_total(); ?></a>
							</div>
						</div>
						<ul class="m-0 p-0 d-lg-none d-block">
							<?php
								$orderby = 'name';
								$order = 'asc';
								$hide_empty = false;
								$cat_args = array(
									'orderby'    => $orderby,
									'order'      => $order,
									'hide_empty' => $hide_empty,
								);

								$product_categories = get_terms( 'product_cat', $cat_args );

								if( !empty($product_categories) ){
									foreach ($product_categories as $key => $category) {
										if ($category->name == "Nezaradené") {
											continue;
										}
										echo '<li class="py-2">';
										echo '<a href="'.get_term_link($category).'"class="text-black">';
										echo $category->name;
										echo '</a>';
										echo '</li>';
									};
								}
							?>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<div class="cat-menu d-lg-block d-none">
			<div class="container px-4">
				<ul class="m-0 p-0">
					<?php
						$orderby = 'name';
						$order = 'asc';
						$hide_empty = false;
						$cat_args = array(
							'orderby'    => $orderby,
							'order'      => $order,
							'hide_empty' => $hide_empty,
						);

						$product_categories = get_terms( 'product_cat', $cat_args );

						if( !empty($product_categories) ){
							foreach ($product_categories as $key => $category) {
								if ($category->name == "Nezaradené") {
									continue;
								}
								echo '<li>';
								echo '<a href="'.get_term_link($category).'"class="text-black">';
								echo $category->name;
								echo '</a>';
								echo '</li>';
							};
						}
					?>
				</ul>
			</div>
    	</div>
	</header>