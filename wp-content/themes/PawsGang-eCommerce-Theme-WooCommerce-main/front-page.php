<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package pawsgang
 */

get_header();
?>
<div class="container-fluid">
    <div class="container">

        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-xs-6">
                        <div class="shop">
                            <div class="shop-img">
                                <img src="<?php echo get_template_directory_uri();?>/img/laptop.jpg" alt="">
                            </div>
                            <div class="shop-body">
                                <h3>Laptopy</h3>
                                <a href="http://localhost/shop/kategoria-produktu/laptopy/" class="cta-btn fs-6">Kúpiť teraz <i class="bi bi-arrow-right-circle-fill"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-6">
                        <div class="shop">
                            <div class="shop-img">
                                <img src="<?php echo get_template_directory_uri();?>/img/headphones.jpg" alt="">
                            </div>
                            <div class="shop-body">
                                <h3>Príslušenstvo</h3>
                                <a href="http://localhost/shop/kategoria-produktu/prislusenstvo/" class="cta-btn fs-6">Kúpiť teraz <i class="bi bi-arrow-right-circle-fill"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-6">
                        <div class="shop">
                            <div class="shop-img">
                                <img src="<?php echo get_template_directory_uri();?>/img/camera.jpg" alt="">
                            </div>
                            <div class="shop-body">
                                <h3>Fotoaparáty</h3>
                                <a href="http://localhost/shop/kategoria-produktu/fotoaparaty/" class="cta-btn fs-6">Kúpiť teraz <i class="bi bi-arrow-right-circle-fill"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row my-5 px-3">
            <div class="col d-flex justify-content-start">
                <h2 class="fs-4 m-0">NOVÉ PRODUKTY</h2>
            </div>
            <div class="col d-flex justify-content-end align-items-center d-lg-block d-none pe-0">
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
        <?php echo do_shortcode('[products columns="4" limit="4" orderby="date"]'); ?>
    </div>
</div>
<div id="timer" class="container-fluid">
    <div class="h-100">
        <div class="row">
            <div class="col d-flex justify-content-md-end justify-content-center pe-md-0 p-0 mb-md-0 mb-3 h-fit-content">
                <div class="bubble">
                    <p id="days" class="text-white fw-bold"></p>
                    <p class="text-white">Dní</p>
                </div>
                <div class="bubble ms-2 me-1">
                    <p id="hours" class="text-white fw-bold"></p>
                    <p class="text-white">Hodín</p>
                </div>
            </div>
            <div class="col d-flex justify-content-md-start justify-content-center ps-md-0 p-0 h-fit-content">
                <div class="bubble ms-1 me-2">
                    <p id="minutes" class="text-white fw-bold"></p>
                    <p class="text-white">Minút</p>
                </div>
                <div class="bubble">
                    <p id="seconds" class="text-white fw-bold"></p>
                    <p class="text-white">Sekúnd</p>  
                </div>
            </div>
        </div>
        <h2 class="fw-bold text-center mt-5 fs-2">TENTO TÝŽDEŇ JE VÝPREDAJ</h2>
        <h2 class="text-center fs-3 lead">NOVÉ PRODUKTY V ZĽAVE AŽ 50%</h2>
        <a href="<?php echo get_permalink( get_page_by_title( "Obchod" ) ) ?>">
        <button id="shop-now" class="d-block m-auto p-2 text-white fw-bold mt-4">NAKUPOVAŤ</button>
        </a>
    </div>
</div>
<div class="container">
    <div class="my-5">
    <div class="row my-5 px-3">
            <div class="col d-flex justify-content-start">
                <h2 class="fs-4 m-0">NAJPREDÁVANEJŠIE</h2>
            </div>
            <div class="col d-flex justify-content-md-end align-items-center d-lg-block d-none pe-0">
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
	    <?php echo do_shortcode('[products columns="4" limit="4" orderby="popularity"]'); ?>
    </div>
</div>
<?php
get_footer();
?>