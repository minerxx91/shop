<?php

    function rzeszoto_theme_support(){
        add_theme_support("title-tag");
        add_theme_support("custom-logo");
        add_theme_support('post-thumbnails');
    }

    add_action("after_setup_theme" ,"rzeszoto_theme_support");

    function rzeszoto_register_styles(){
        $version = wp_get_theme()->get('Version');
        wp_enqueue_style("rzeszoto-style", get_template_directory_uri()."/style.css", array("rzeszoto-bootstrap"), $version, "all");
        wp_enqueue_style("rzeszoto-bootstrap", "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css", array(), "5.2.0", "all");
    }

    add_action("wp_enqueue_scripts", "rzeszoto_register_styles");

    function rzeszoto_register_scripts(){
        wp_enqueue_script("rzeszoto-popper", "https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js", array(), "2.11.5", true);
        wp_enqueue_script("rzeszoto-bootstrap", "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js", array(), "5.2.0", true);
        wp_enqueue_script("rzeszoto-main", get_template_directory_uri()."/assets/js/main.js", array(), "1.0", true);
    }

    add_action("wp_enqueue_scripts", "rzeszoto_register_scripts");

    function register_navwalker(){
        require_once get_template_directory() . '/inc/class-wp-bootstrap-navwalker.php';
    }
    add_action( 'after_setup_theme', 'register_navwalker' );

    register_nav_menus( array(
        'primary' => __( 'Primary Menu', 'rzeszoto' ),
    ) );

    function pagination() {
  
        if( is_singular() )
            return;
      
        global $wp_query;
      
        if( $wp_query->max_num_pages <= 1 )
            return;
      
        $paged = get_query_var( 'paged' ) ? absint( get_query_var( 'paged' ) ) : 1;
        $max   = intval( $wp_query->max_num_pages );
      
        if ( $paged >= 1 )
            $links[] = $paged;
      
        if ( $paged >= 3 ) {
            $links[] = $paged - 1;
            $links[] = $paged - 2;
        }
      
        if ( ( $paged + 2 ) <= $max ) {
            $links[] = $paged + 2;
            $links[] = $paged + 1;
        }
      
        echo '<div class="navigation"><ul>' . "\n";
      
        if(!get_previous_post_link())
            printf( '<li>%s</li>' . "\n", get_previous_posts_link("Naspäť") );
      
        if ( ! in_array( 1, $links ) ) {
            $class = 1 == $paged ? ' class="active"' : '';
      
            printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( 1 ) ), '1' );
      
            if ( ! in_array( 2, $links ) )
                echo '<li>…</li>';
        }
      
        sort( $links );
        foreach ( (array) $links as $link ) {
            $class = $paged == $link ? ' class="active"' : '';
            printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $link ) ), $link );
        }
      
        if ( ! in_array( $max, $links ) ) {
            if ( ! in_array( $max - 1, $links ) )
                echo '<li>…</li>' . "\n";
      
            $class = $paged == $max ? ' class="active"' : '';
            printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $max ) ), $max );
        }
      
        if ( get_next_posts_link() )
            printf( '<li>%s</li>' . "\n", get_next_posts_link("Ďalej") );
        echo '</ul></div>' . "\n";
      
    }
?>