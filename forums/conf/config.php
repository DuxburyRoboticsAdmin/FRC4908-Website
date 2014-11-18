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
$Configuration['EnabledPlugins']['Flagging'] = TRUE;
$Configuration['EnabledPlugins']['Gravatar'] = TRUE;
$Configuration['EnabledPlugins']['MembersListEnh'] = TRUE;
$Configuration['EnabledPlugins']['Tagging'] = TRUE;
$Configuration['EnabledPlugins']['CKEditor'] = TRUE;
$Configuration['EnabledPlugins']['VanillaStats'] = TRUE;

// Garden
$Configuration['Garden']['Title'] = 'DHSRobotics';
$Configuration['Garden']['Cookie']['Salt'] = 'XRVUVFG4Y7';
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
$Configuration['Garden']['Email']['SupportName'] = 'DHSRobotics';
$Configuration['Garden']['InputFormatter'] = 'Html';
$Configuration['Garden']['Version'] = '2.1.3';
$Configuration['Garden']['RewriteUrls'] = TRUE;
$Configuration['Garden']['Cdns']['Disable'] = FALSE;
$Configuration['Garden']['CanProcessImages'] = TRUE;
$Configuration['Garden']['SystemUserID'] = '2';
$Configuration['Garden']['Installed'] = TRUE;
$Configuration['Garden']['Theme'] = 'Bootstrap';
$Configuration['Garden']['ThemeOptions']['Name'] = 'Bootstrap';
$Configuration['Garden']['ThemeOptions']['Styles']['Key'] = 'Default';
$Configuration['Garden']['ThemeOptions']['Styles']['Value'] = '%s_default';
$Configuration['Garden']['EditContentTimeout'] = '-1';
$Configuration['Garden']['InstallationID'] = 'A6CD-0E32656B-D8801D55';
$Configuration['Garden']['InstallationSecret'] = 'a877dda3b19caf9219d60bfb5b70b0619c11f57c';

// Plugins
$Configuration['Plugins']['GettingStarted']['Dashboard'] = '1';
$Configuration['Plugins']['GettingStarted']['Plugins'] = '1';
$Configuration['Plugins']['GettingStarted']['Categories'] = '1';
$Configuration['Plugins']['GettingStarted']['Registration'] = '1';

// Routes
$Configuration['Routes']['DefaultController'] = array('categories', 'Internal');
$Configuration['Routes']['Xm1lbWJlcnMoLy4qKT8k'] = array('plugin/MembersListEnh$1', 'Internal');

// Vanilla
$Configuration['Vanilla']['Version'] = '2.1.3';
$Configuration['Vanilla']['Categories']['MaxDisplayDepth'] = '0';
$Configuration['Vanilla']['Categories']['DoHeadings'] = FALSE;
$Configuration['Vanilla']['Categories']['HideModule'] = FALSE;
$Configuration['Vanilla']['Categories']['Layout'] = 'table';
$Configuration['Vanilla']['Discussions']['Layout'] = 'modern';
$Configuration['Vanilla']['Discussions']['PerPage'] = '30';
$Configuration['Vanilla']['Comments']['AutoRefresh'] = NULL;
$Configuration['Vanilla']['Comments']['PerPage'] = '30';
$Configuration['Vanilla']['Archive']['Date'] = '';
$Configuration['Vanilla']['Archive']['Exclude'] = FALSE;
$Configuration['Vanilla']['AdminCheckboxes']['Use'] = FALSE;

// Last edited by Unknown (50.206.92.234)2014-10-07 20:25:12