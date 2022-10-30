<?php
    wp_head( );
    get_header();
?>
<div class="container">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-xs-6">
                    <div class="shop">
                        <div class="shop-img">
                            <img src="<?php echo get_template_directory_uri();?>/assets/img/laptop.jpg" alt="">
                        </div>
                        <div class="shop-body">
                            <h3>Laptop<br>Collection</h3>
                            <a href="#" class="cta-btn">Shop now <i class="bi bi-arrow-right-circle-fill"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-xs-6">
                    <div class="shop">
                        <div class="shop-img">
                            <img src="<?php echo get_template_directory_uri();?>/assets/img/headphones.jpg" alt="">
                        </div>
                        <div class="shop-body">
                            <h3>Accessories<br>Collection</h3>
                            <a href="#" class="cta-btn">Shop now <i class="bi bi-arrow-right-circle-fill"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-xs-6">
                    <div class="shop">
                        <div class="shop-img">
                            <img src="<?php echo get_template_directory_uri();?>/assets/img/camera.jpg" alt="">
                        </div>
                        <div class="shop-body">
                            <h3>Cameras<br>Collection</h3>
                            <a href="#" class="cta-btn">Shop now <i class="bi bi-arrow-right-circle-fill"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row my-5 px-3">
        <div class="col d-flex justify-content-start">
            <h2 class="fs-4 m-0">NEW PRODUCTS</h2>
        </div>
        <div class="col d-flex justify-content-end align-items-center">
            <?php
                $orderby = 'name';
                $order = 'asc';
                $hide_empty = false ;
                $cat_args = array(
                    'orderby'    => $orderby,
                    'order'      => $order,
                    'hide_empty' => $hide_empty,
                );

                $product_categories = get_terms( 'product_cat', $cat_args );

                if( !empty($product_categories) ){
                    echo '<ul class="m-0 p-0">';
                    foreach ($product_categories as $key => $category) {
                        if ($category->name == "Nezaradené") {
                            continue;
                        }
                        echo '<li class="d-inline-block ms-3">';
                        echo '<a href="'.get_term_link($category).'"class="product-cat">';
                        echo $category->name;
                        echo '</a>';
                        echo "</li>";
                    };
                    echo "</ul>";
                }
            ?>
        </div>
    </div>
    <div class="row">
        <div class="col">

        </div>
        <div class="col">
        
        </div>
        <div class="col">
        
        </div>
    </div>
</div>
<div id="timer" class="container-fluid">
    <div class="h-100">
        <div class="row">
            <div class="col d-flex justify-content-end pe-0 h-fit-content">
                <div class="bubble">

                </div>
                <div class="bubble ms-2 me-1">
                    
                </div>
            </div>
            <div class="col d-flex justify-content-start ps-0 h-fit-content">
                <div class="bubble ms-1 me-2">

                </div>
                <div class="bubble">
                    
                </div>
            </div>
        </div>
        <h2 class="fw-bold text-center mt-5 fs-2">HOT DEAL THIS WEEK</h2>
        <h2 class="text-center fs-3 lead">NEW COLLECTION UP TO 50% OFF</h2>
        <button id="shop-now" class="d-block m-auto p-2 text-white fw-bold mt-4">SHOP NOW</button>
    </div>
</div>
<div class="container">
    <?php echo do_shortcode('[products columns="4" limit="4"]'); ?>
 </div>
<?php
    get_footer();
    wp_footer( );
?>