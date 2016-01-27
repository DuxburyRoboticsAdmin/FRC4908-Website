<?php
/**
 * New Idea
 *
 * Have a task run after editing Data on the backend.
 * That task would then re-create the HTML needed for the Alumni and meet the team.
 *
 * I like that idea more.
 */?>

<section class="section parallax parallax-sponsor" id="home">
    <div class="container">
        <h1>The Team</h1>
    </div>
</section>

<section class="section content" id="sponsorus">
    <div class="container">
        <?php include_once('crontasks/members.php'); ?>
        
    </div>
</section>
