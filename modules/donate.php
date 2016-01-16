<?php
/**
 * _GET donated=x
 * x=1 - Donation canceled
 * x=2 - Donation success!
 */
echo '
<section class="section parallax parallax-donate" id="home">
    <div class="container">
        <h1>Donate</h1>
    </div>
</section>
';


if (!isset($_GET['donated'])) {
    echo '<section class="section content" id="donate">
<div class="container">
    <!-- donate button -->
    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
    <input type="hidden" name="cmd" value="_s-xclick">
    <input type="hidden" name="hosted_button_id" value="2MJ8X4QYKG5TQ">
    <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
    <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
    </form>

</div>
</section>';
} else if ($_GET['donated'] == 1) {
    echo '<section class="section content" id="donatedfailed">
<div class="container">
    <p>
        <h4 style="font-size: 300%; text-align: center">We\'re sorry to see you go. If there was an issues feel free to</h4>
        <a class="btn btn-default btn-lg" role="button" href="mailto:robotics@duxbury.k12.ma.us?subject=Donation Issue">email us</a>
    </p>
</div>
</section>';
} else if ($_GET['donated'] == 2) {
    echo '<section class="section content" id="donated" style="text-align: center">
<div class="container">
    <h4 style="font-size: 300%">Thank you for your donation to Duxbury Robotics. Your donation will be regonized by evreyone on the team. <br>From evreyone on the team, </h4>
    <h1 style="font-size: 1000%">Thank You!</h1>
</div>


</section>';
}

error_reporting(0);

/*
web-donate-001 button

--

<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="2MJ8X4QYKG5TQ">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>

 */





?>

