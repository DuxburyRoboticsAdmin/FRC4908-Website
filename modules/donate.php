<?php
/**
 * _GET donated=x
 * x=1 - Donation canceled
 * x=2 - Donation success!
 */
echo '
<section class="section parallax parallax-1" id="home">
    <div class="container">
        <h1>Donate</h1>
    </div>
</section>
';


if (!isset($_GET['donated'])) {
    echo '<section class="section content" id="donate"></section>';
} else if ($_GET['donated'] == 1) {
    echo '<section class="section content" id="donatedfailed"></section>';
} else if ($_GET['donated'] == 2) {
    echo '<section class="section content" id="donated"></section>';
}

error_reporting(0);

?>

<!--

web-donate-001 button

--

<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="2MJ8X4QYKG5TQ">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
-->



