<?php
    wp_head();
    get_header();
?>

<div class="container">
    <?php echo apply_filters('the_content',$wp_query->post->post_content); ?>
</div>

<?php
    wp_footer();
    get_footer();
?>