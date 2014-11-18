<?php if (!defined('APPLICATION')) exit();

// Conversations
$Configuration['Conversations']['Version'] = '2.1.3';

// Database
$Configuration['Database']['Name'] = 'DHSRobotics';
$Configuration['Database']['Host'] = 'localhost';
$Configuration['Database']['User'] = 'root';
$Configuration['Database']['Password'] = '';

// EnabledApplications
$Configuration['EnabledApplications']['Conversations'] = 'conversations';
$Configuration['EnabledApplications']['Vanilla'] = 'vanilla';

// EnabledPlugins
$Configuration['EnabledPlugins']['GettingStarted'] = 'GettingStarted';
$Configuration['EnabledPlugins']['HtmLawed'] = 'HtmLawed';
$Configuration['EnabledPlugins']['AllViewed'] = TRUE;
$Configuration['EnabledPlugins']['Emotify'] = TRUE;
$Configuration['EnabledPlugins']['Flagging'] = TRUE;
$Configuration['EnabledPlugins']['VanillaStats'] = TRUE;
$Configuration['EnabledPlugins']['Tagging'] = TRUE;
$Configuration['EnabledPlugins']['Gravatar'] = TRUE;
$Configuration['EnabledPlugins']['MembersListEnh'] = TRUE;
$Configuration['EnabledPlugins']['CKEditor'] = TRUE;
$Configuration['EnabledPlugins']['SubCategories'] = TRUE;

// Garden
$Configuration['Garden']['Title'] = 'DHS Robotics';
$Configuration['Garden']['Cookie']['Salt'] = '5VRHXICQXH';
$Configuration['Garden']['Cookie']['Domain'] = '';
$Configuration['Garden']['Registration']['ConfirmEmail'] = FALSE;
$Configuration['Garden']['Registration']['Method'] = 'Captcha';
$Configuration['Garden']['Registration']['CaptchaPrivateKey'] = '6Ld_FvsSAAAAAJdTH4acJ5mZvu_8GdEMqHUkzq0s';
$Configuration['Garden']['Registration']['CaptchaPublicKey'] = '6Ld_FvsSAAAAAGbLHhQEcPm3hnI3heyMG2msjJu7';
$Configuration['Garden']['Registration']['InviteExpiration'] = '-1 week';
$Configuration['Garden']['Registration']['ConfirmEmailRole'] = '8';
$Configuration['Garden']['Registration']['InviteRoles']['3'] = '0';
$Configuration['Garden']['Registration']['InviteRoles']['4'] = '0';
$Configuration['Garden']['Registration']['InviteRoles']['8'] = '0';
$Configuration['Garden']['Registration']['InviteRoles']['16'] = '0';
$Configuration['Garden']['Registration']['InviteRoles']['32'] = '0';
$Configuration['Garden']['Email']['SupportName'] = 'DHS Robotics';
$Configuration['Garden']['Email']['SupportAddress'] = 'fredghostkyle@yahoo.com';
$Configuration['Garden']['Email']['UseSmtp'] = FALSE;
$Configuration['Garden']['Email']['SmtpHost'] = '';
$Configuration['Garden']['Email']['SmtpUser'] = '';
$Configuration['Garden']['Email']['SmtpPassword'] = '';
$Configuration['Garden']['Email']['SmtpPort'] = '25';
$Configuration['Garden']['Email']['SmtpSecurity'] = '';
$Configuration['Garden']['InputFormatter'] = 'Html';
$Configuration['Garden']['Version'] = '2.1.3';
$Configuration['Garden']['RewriteUrls'] = TRUE;
$Configuration['Garden']['Cdns']['Disable'] = FALSE;
$Configuration['Garden']['CanProcessImages'] = TRUE;
$Configuration['Garden']['SystemUserID'] = '2';
$Configuration['Garden']['Installed'] = TRUE;
$Configuration['Garden']['Format']['Hashtags'] = FALSE;
$Configuration['Garden']['Theme'] = 'Bootstrap';
$Configuration['Garden']['ThemeOptions']['Name'] = 'Bootstrap';
$Configuration['Garden']['InstallationID'] = '3DD2-36652919-450D1DC1';
$Configuration['Garden']['InstallationSecret'] = '73aebe9fdcf4f64199e452d68fd6e494d79a9ce4';

// Plugins
$Configuration['Plugins']['GettingStarted']['Dashboard'] = '1';
$Configuration['Plugins']['GettingStarted']['Plugins'] = '1';
$Configuration['Plugins']['GettingStarted']['Profile'] = '1';
$Configuration['Plugins']['GettingStarted']['Categories'] = '1';
$Configuration['Plugins']['GettingStarted']['Registration'] = '1';

// Routes
$Configuration['Routes']['DefaultController'] = array('categories', 'Internal');
$Configuration['Routes']['Xm1lbWJlcnMoLy4qKT8k'] = array('plugin/MembersListEnh$1', 'Internal');

// Vanilla
$Configuration['Vanilla']['Version'] = '2.1.3';
$Configuration['Vanilla']['Discussions']['Layout'] = 'modern';
$Configuration['Vanilla']['Categories']['Layout'] = 'modern';

// Last edited by fredghostkyle (75.67.93.81)2014-09-29 02:03:28