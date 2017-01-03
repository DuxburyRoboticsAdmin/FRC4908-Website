<style>
    /*
        This is here because there is two words here, not 1. I will move this eventualy I just needed this to do a lot of
        testing and stuff. Please do not move this for me.
     */
    section.section.parallax h1
    {
        color: rgba(255, 255, 255, 0.7);
        font-size: 75px;
        line-height: 110px;
        font-weight: 700;
        text-align: center;
        text-transform: uppercase;
        text-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    @media all and (min-width: 960px)
    {
        section.section.parallax h1
        {
            font-size: 100px;
            line-height: 125px;
            text-align: center;
        }
    }
</style>



<section class="section parallax parallax-index" id="home">
    <div class="container">
        <h1>Duxbury<br>Robotics</h1>
    </div>
</section>

<section class="section content" id="">

    <div class="container">
        <p class="blurb">
            <strong>
                We are the Duxbury Robotics team, and each year we participate in the FIRST Robotics Competition as Team 4908 and support FTC and FLL teams.
                We are currently in our Fourth year as a team; we now have over 50 registered members.
            </strong>
        </p>

        <?php

        if($camp) {
            echo '
        <div class="alert alert-success">
            <p style="text-align: center">We\'re hosting the <i>Duxbury Engineering Camp</i> for Alden Students, learn more <a href="/camp" style="display:inline;">here</a>!</p>
        </div>';
        } ?>

        <!-- BOOSTER -->
        <div class="alert alert-success">
            <!--This is a murge fix. We take precident over this. -->
            <p style="text-align: center">Want some awesome <strong>Duxbury Robotics Swag? <a href="http://booster.com/4908"  style="display: inline" target="_blank">CLICK HERE</a>!</strong></p>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="thumbnail">
                    <img src="/img/teambanner.JPG">
                    <center>
                        <div class="caption">
                            <h3>FIRST Robotics Compition</h3>
                            <p>Check out our FRC team! There's a whole bunch of robots there. </p>
                            <p><a href="/FIRST/FRC" class="btn btn-primary" role="button">FRC Team</a></p>
                            <hr>
                            <h3>What is FIRST?</h3>
                            <p>FIRST is a international non-profit organisation that promotes STEM education.  </p>
                            <p><a href="/FIRST" class="btn btn-primary" role="button">Learn More</a></p>
                        </div>
                    </center>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                    <center>
                        <div class="caption">
                            <h3>Recent Updates</h3>
                            <p>
                                <a class="twitter-timeline" href="https://twitter.com/DuxburyRobotics" data-widget-id="556475594922532864">Tweets by @DuxburyRobotics</a>
                                <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                            </p>
                        </div>
                    </center>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                    <img src="/img/shirt.JPG">
                    <center>
                        <div class="caption">
                            <h3>Our sponsors</h3>
                            <p>Power to the team. </p>
                            <p><a href="/sponsors" class="btn btn-primary" role="button">Learn More</a></p>
                            <hr>
                            <h3>Sponsor Us </h3>
                            <p>Robotics is expensive. We operate on a tight budget. With your help, we can achieve so much more.</p>
                            <p><a href="/sponsorus" class="btn btn-primary" role="button">Sponsor Us</a></p>
                        </div>
                    </center>
                </div>
            </div>
        </div>
        <br>
        <br>
        <hr>
    </div>

    <?php require_once "sponsorRows.php"; ?>

</section>
