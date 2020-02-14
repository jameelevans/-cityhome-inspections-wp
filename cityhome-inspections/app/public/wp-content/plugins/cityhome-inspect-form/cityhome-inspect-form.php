<?php
/*
Plugin Name: City Home Inspections Contact Form Plugin
Plugin URI: http://cityhomeinspect.net
Description: A simple, fast and custom form plugin for City Home Inspections
Version: 1.0
Author: Jameel Evans
Author URI: http://jameelevans.com
*/

function html_form_code() {
	echo '<form id="modal__inner-form" action="' . esc_url( $_SERVER['REQUEST_URI'] ) . '" method="post">';
	echo '<h4>Contact Information</h4>';

  echo '<div class="modal__inner-form--name">';
	echo '<input class="modal__inner-form--item" type="text" name="name" pattern="[a-zA-Z0-9 ]+" value="' . ( isset( $_POST["ch-name"] ) ? esc_attr( $_POST["ch-name"] ) : '' ) . '" size="40" placeholder="Full Name" required />';
	echo '</div>';

	echo '<div class="modal__inner-form--email">';
	echo '<input class="modal__inner-form--item" type="email" name="email" value="' . ( isset( $_POST["ch-email"] ) ? esc_attr( $_POST["ch-email"] ) : '' ) . '" size="40" placeholder="Email Address" required />';
	echo '</div>';

	echo '<div class="modal__inner-form--number">';
	echo '<input class="modal__inner-form--item" type="text" name="number" pattern="[0-9 ]+" value="' . ( isset( $_POST["ch-number"] ) ? esc_attr( $_POST["ch-number"] ) : '' ) . '" size="40" placeholder="Phone Number" required />';
	echo '</div>';

	echo '<h4>Inspection Address</h4>';
	echo '<div class="modal__inner-form--address">';
	echo '<input class="modal__inner-form--item" type="text" name="address" pattern="[a-zA-Z0-9 ]+" value="' . ( isset( $_POST["ch-address"] ) ? esc_attr( $_POST["ch-address"] ) : '' ) . '" size="40" placeholder="Address"/>';
	echo '</div>';

  echo '<div class="modal__inner-form--city-zip">';
  echo '<input class="modal__inner-form--item" type="text" name="city" pattern="[a-zA-Z ]+" value="' . ( isset( $_POST["ch-city"] ) ? esc_attr( $_POST["ch-city"] ) : '' ) . '" maxlength="255" placeholder="City"/>';

  echo '<input class="modal__inner-form--item" type="text" name="zipcode" pattern="^\d{5}$" value="' . ( isset( $_POST["ch-zipcode"] ) ? esc_attr( $_POST["ch-zipcode"] ) : '' ) . '" maxlength="255" placeholder="Zip Code"/>';
  echo '</div>';

  echo '<h4><label for="date">Desired Inspection Date</label></h4>';
  echo '<div class="modal__inner-form--date">';
  echo '<input class="modal__inner-form--item" type="text" name="date" pattern="^\d{2}/\d{2}/\d{2}$" value="' . ( isset( $_POST["ch-date"] ) ? esc_attr( $_POST["ch-date"] ) : '' ) . '" size="40" placeholder="mm/dd/yy"/>';
  echo '</div>';

  echo '<div class="modal__inner-form--time">';
  echo '<select class="modal__inner-form--item" name="time">';
  echo '<option value="Morning">Morning</option>';
  echo '<option value="Afternoon">Afternoon</option>';
  echo '<option value="Evening">Evening</option>';
  echo '</select>';
  echo '</div>';
  echo '<h4><label for="inspection">Type of Inspection</label></h4>';
  echo '<div class="modal__inner-form--type">';
  echo '<select class="modal__inner-form--item" name="type">';
  echo '<option value="Home Buyer">Home Buyer</option>';
  echo '<option value="Home Seller">Home Seller</option>';
  echo '</select>';
  echo '</div>';
	echo '<input class="btn btn--green-outline" type="submit" name="submitted" value="Send"> ';
	echo '<input class="modal__close btn btn--red-outline" type="submit" name="submitted" value="Cancel">';
  echo '</div>';
	echo '</form>';
}

function deliver_mail() {

	// if the submit button is clicked, send the email
	if ( isset( $_POST['submitted'] ) ) {

		// sanitize form values
		$chName    = sanitize_text_field( $_POST["name"] );
		$chEmail   = sanitize_email( $_POST["email"] );
		$chNumber = sanitize_text_field( $_POST["number"] );
    $subject = "You recieved a request from $name";
    $chAddress = sanitize_text_field( $_POST["address"] );
    $chCity = sanitize_text_field( $_POST["city"] );
    $chZipcode = sanitize_text_field( $_POST["zipcode"] );
    $chDate = sanitize_text_field( $_POST["date"] );
    $chTime = sanitize_text_field( $_POST["time"] );
    $chType = sanitize_text_field( $_POST["type"] );

		// get the blog administrator's email address
		$to = get_option( 'admin_email' );

		$headers = "From: City Home Inspections <$to>" . "\r\n";
    $headers .= "Reply-To: $to" . "\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

    //////Message sent to City Home Inspections
   $message = '<html><body>';
   $message .= "$subject" . "\r\n" . "\r\n";
   $message .= '<table rules="all" style="border-color: #666;" cellpadding="10">';
   $message .= "<tr style='background: #eee;'><td><strong>Name:</strong> </td><td>" . "$chName" . "</td></tr>";
   $message .= "<tr><td><strong>Number:</strong> </td><td>" . "$chNumber" . "</td></tr>";
   $message .= "<tr><td><strong>Email:</strong> </td><td>" . "$chEmail" . "</td></tr>";
   $message .= "<tr><td><strong>Inspection Type:</strong> </td><td>" . "$chType" . "</td></tr>";
   $message .= "<tr><td><strong>Inspection Address:</strong> </td><td>" . "$chAddress " . "$chCity " . "$chZipcode" . "</td></tr>";
   $message .= "<tr><td><strong>Desired Inspection Date/ Time:</strong> </td><td>" . "$chDate " . "$chTime" . "</td></tr>";
   $message .= "</body></html>";


		// If email has been processed for sending, display a success message
		if ( wp_mail( $to, $subject, $message, $headers ) ) {
			echo '<div>';
			echo '<p>Thanks for contacting City Home Inspections, expect a response soon.</p>';
			echo '</div>';
		} else {
			echo 'An unexpected error occurred';
		}
	}
}

function form_shortcode() {
	ob_start();
	deliver_mail();
	html_form_code();

	return ob_get_clean();
}

add_shortcode( 'cityhome_contact_form', 'form_shortcode' );


?>
