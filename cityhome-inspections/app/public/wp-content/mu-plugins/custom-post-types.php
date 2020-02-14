<?php
// Slide post type action
add_action('init', 'custom_post_types');

//All custom post types
function custom_post_types() {

  // Slide post type
  register_post_type('slide', array(
    'supports' => array('title','slides'),
    'public' => true,
    'labels' => array(
      'name' => 'Slides',
      'add_new_item' => 'Add New Slide',
      'edit_item' => 'Edit Slides',
      'all_items' => 'All Slides',
      'singular_name' => 'Slide'
    ),
    'menu_icon' => 'dashicons-images-alt2'
  ));
}
