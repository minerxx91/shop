<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<header>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasLeft" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="container">
                <div class="row">
                    <div class="col-3">
                        <a href="<?php echo get_home_url(); ?>">
                            <img src="<?php echo get_template_directory_uri();?>/assets/img/stiahnuť.jpg" alt="" class="d-flex justify-content-start">
                        </a>
                    </div>
                    <div class="col-6 d-flex justify-content-center flex-column">
                        <?php echo do_shortcode( '[aws_search_form]' ); ?>
                    </div>
                    <div class="col-3 d-flex justify-content-end align-items-center">
                        <a href="<?php echo wc_get_cart_url(); ?>">
                        <i class="bi bi-cart-fill"></i>
                        <?php echo WC()->cart->get_cart_contents_count(); ?>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="offcanvas offcanvas-left d-lg-none" tabindex="-1" id="offcanvasLeft" aria-labelledby="offcanvasLeftLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasLeftLabel">Offcanvas top</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            ...
        </div>
        </div>
    </nav>
    <div class="cat-menu">
        <div class="container px-4">
            <ul class="m-0 p-0">
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