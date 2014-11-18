-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2014 at 11:50 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `DHSRobotics`
--
CREATE DATABASE IF NOT EXISTS `DHSRobotics` DEFAULT CHARACTER SET swe7 COLLATE swe7_bin;
USE `DHSRobotics`;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Activity`
--

CREATE TABLE IF NOT EXISTS `GDN_Activity` (
`ActivityID` int(11) NOT NULL,
  `ActivityTypeID` int(11) NOT NULL,
  `NotifyUserID` int(11) NOT NULL DEFAULT '0',
  `ActivityUserID` int(11) DEFAULT NULL,
  `RegardingUserID` int(11) DEFAULT NULL,
  `Photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HeadlineFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Story` text COLLATE utf8_unicode_ci,
  `Format` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecordType` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `Notified` tinyint(4) NOT NULL DEFAULT '0',
  `Emailed` tinyint(4) NOT NULL DEFAULT '0',
  `Data` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `GDN_Activity`
--

INSERT INTO `GDN_Activity` (`ActivityID`, `ActivityTypeID`, `NotifyUserID`, `ActivityUserID`, `RegardingUserID`, `Photo`, `HeadlineFormat`, `Story`, `Format`, `Route`, `RecordType`, `RecordID`, `InsertUserID`, `DateInserted`, `InsertIPAddress`, `DateUpdated`, `Notified`, `Emailed`, `Data`) VALUES
(1, 17, -1, 1, NULL, NULL, '{ActivityUserID,You} joined.', 'Welcome Aboard!', NULL, NULL, NULL, NULL, NULL, '2014-10-07 20:06:57', '127.0.0.1', '2014-10-07 20:06:57', 0, 0, 'a:0:{}'),
(2, 15, -1, 1, 2, NULL, '{RegardingUserID,you} &rarr; {ActivityUserID,you}', 'Ping! An activity post is a public way to talk at someone. When you update your status here, it posts it on your activity feed.', 'Html', NULL, NULL, NULL, 2, '2014-10-07 20:07:01', NULL, '2014-10-07 20:07:01', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `GDN_ActivityComment`
--

CREATE TABLE IF NOT EXISTS `GDN_ActivityComment` (
`ActivityCommentID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `Body` text COLLATE utf8_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_ActivityType`
--

CREATE TABLE IF NOT EXISTS `GDN_ActivityType` (
`ActivityTypeID` int(11) NOT NULL,
  `Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `AllowComments` tinyint(4) NOT NULL DEFAULT '0',
  `ShowIcon` tinyint(4) NOT NULL DEFAULT '0',
  `ProfileHeadline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullHeadline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RouteCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Notify` tinyint(4) NOT NULL DEFAULT '0',
  `Public` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `GDN_ActivityType`
--

INSERT INTO `GDN_ActivityType` (`ActivityTypeID`, `Name`, `AllowComments`, `ShowIcon`, `ProfileHeadline`, `FullHeadline`, `RouteCode`, `Notify`, `Public`) VALUES
(1, 'SignIn', 0, 0, '%1$s signed in.', '%1$s signed in.', NULL, 0, 1),
(2, 'Join', 1, 0, '%1$s joined.', '%1$s joined.', NULL, 0, 1),
(3, 'JoinInvite', 1, 0, '%1$s accepted %4$s invitation for membership.', '%1$s accepted %4$s invitation for membership.', NULL, 0, 1),
(4, 'JoinApproved', 1, 0, '%1$s approved %4$s membership application.', '%1$s approved %4$s membership application.', NULL, 0, 1),
(5, 'JoinCreated', 1, 0, '%1$s created an account for %3$s.', '%1$s created an account for %3$s.', NULL, 0, 1),
(6, 'AboutUpdate', 1, 0, '%1$s updated %6$s profile.', '%1$s updated %6$s profile.', NULL, 0, 1),
(7, 'WallComment', 1, 1, '%1$s wrote:', '%1$s wrote on %4$s %5$s.', NULL, 0, 1),
(8, 'PictureChange', 1, 0, '%1$s changed %6$s profile picture.', '%1$s changed %6$s profile picture.', NULL, 0, 1),
(9, 'RoleChange', 1, 0, '%1$s changed %4$s permissions.', '%1$s changed %4$s permissions.', NULL, 1, 1),
(10, 'ActivityComment', 0, 1, '%1$s', '%1$s commented on %4$s %8$s.', 'activity', 1, 1),
(11, 'Import', 0, 0, '%1$s imported data.', '%1$s imported data.', NULL, 1, 0),
(12, 'Banned', 0, 0, '%1$s banned %3$s.', '%1$s banned %3$s.', NULL, 0, 1),
(13, 'Unbanned', 0, 0, '%1$s un-banned %3$s.', '%1$s un-banned %3$s.', NULL, 0, 1),
(14, 'Applicant', 0, 0, '%1$s applied for membership.', '%1$s applied for membership.', NULL, 1, 0),
(15, 'WallPost', 1, 1, '%3$s wrote:', '%3$s wrote on %2$s %5$s.', NULL, 0, 1),
(16, 'Default', 0, 0, NULL, NULL, NULL, 0, 1),
(17, 'Registration', 0, 0, NULL, NULL, NULL, 0, 1),
(18, 'Status', 0, 0, NULL, NULL, NULL, 0, 1),
(19, 'Ban', 0, 0, NULL, NULL, NULL, 0, 1),
(20, 'ConversationMessage', 0, 0, '%1$s sent you a %8$s.', '%1$s sent you a %8$s.', 'message', 1, 0),
(21, 'AddedToConversation', 0, 0, '%1$s added %3$s to a %8$s.', '%1$s added %3$s to a %8$s.', 'conversation', 1, 0),
(22, 'NewDiscussion', 0, 0, '%1$s started a %8$s.', '%1$s started a %8$s.', 'discussion', 0, 0),
(23, 'NewComment', 0, 0, '%1$s commented on a discussion.', '%1$s commented on a discussion.', 'discussion', 0, 0),
(24, 'DiscussionComment', 0, 0, '%1$s commented on %4$s %8$s.', '%1$s commented on %4$s %8$s.', 'discussion', 1, 0),
(25, 'DiscussionMention', 0, 0, '%1$s mentioned %3$s in a %8$s.', '%1$s mentioned %3$s in a %8$s.', 'discussion', 1, 0),
(26, 'CommentMention', 0, 0, '%1$s mentioned %3$s in a %8$s.', '%1$s mentioned %3$s in a %8$s.', 'comment', 1, 0),
(27, 'BookmarkComment', 0, 0, '%1$s commented on your %8$s.', '%1$s commented on your %8$s.', 'bookmarked discussion', 1, 0),
(28, 'Discussion', 0, 0, NULL, NULL, NULL, 0, 1),
(29, 'Comment', 0, 0, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `GDN_AnalyticsLocal`
--

CREATE TABLE IF NOT EXISTS `GDN_AnalyticsLocal` (
  `TimeSlot` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Views` int(11) DEFAULT NULL,
  `EmbedViews` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `GDN_AnalyticsLocal`
--

INSERT INTO `GDN_AnalyticsLocal` (`TimeSlot`, `Views`, `EmbedViews`) VALUES
('20141007', 46, 0),
('20141008', 33, 0),
('20141011', 2, 0),
('20141013', 3, 0),
('20141014', 1, 0),
('20141031', 2, 0),
('20141102', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Ban`
--

CREATE TABLE IF NOT EXISTS `GDN_Ban` (
`BanID` int(11) NOT NULL,
  `BanType` enum('IPAddress','Name','Email') COLLATE utf8_unicode_ci NOT NULL,
  `BanValue` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CountUsers` int(10) unsigned NOT NULL DEFAULT '0',
  `CountBlockedRegistrations` int(10) unsigned NOT NULL DEFAULT '0',
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Category`
--

CREATE TABLE IF NOT EXISTS `GDN_Category` (
`CategoryID` int(11) NOT NULL,
  `ParentCategoryID` int(11) DEFAULT NULL,
  `TreeLeft` int(11) DEFAULT NULL,
  `TreeRight` int(11) DEFAULT NULL,
  `Depth` int(11) DEFAULT NULL,
  `CountDiscussions` int(11) NOT NULL DEFAULT '0',
  `CountComments` int(11) NOT NULL DEFAULT '0',
  `DateMarkedRead` datetime DEFAULT NULL,
  `AllowDiscussions` tinyint(4) NOT NULL DEFAULT '1',
  `Archived` tinyint(4) NOT NULL DEFAULT '0',
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `UrlCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL,
  `CssClass` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PermissionCategoryID` int(11) NOT NULL DEFAULT '-1',
  `HideAllDiscussions` tinyint(4) NOT NULL DEFAULT '0',
  `DisplayAs` enum('Categories','Discussions','Default') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Default',
  `InsertUserID` int(11) NOT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime NOT NULL,
  `LastCommentID` int(11) DEFAULT NULL,
  `LastDiscussionID` int(11) DEFAULT NULL,
  `LastDateInserted` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `GDN_Category`
--

INSERT INTO `GDN_Category` (`CategoryID`, `ParentCategoryID`, `TreeLeft`, `TreeRight`, `Depth`, `CountDiscussions`, `CountComments`, `DateMarkedRead`, `AllowDiscussions`, `Archived`, `Name`, `UrlCode`, `Description`, `Sort`, `CssClass`, `Photo`, `PermissionCategoryID`, `HideAllDiscussions`, `DisplayAs`, `InsertUserID`, `UpdateUserID`, `DateInserted`, `DateUpdated`, `LastCommentID`, `LastDiscussionID`, `LastDateInserted`) VALUES
(-1, -1, 1, 26, 0, 0, 0, NULL, 1, 0, 'Root', 'root', 'Root of category tree. Users should never see this.', 1, NULL, NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:06:59', '2014-10-07 20:06:59', NULL, NULL, NULL),
(2, -1, 2, 9, 1, 0, 0, NULL, 1, 0, 'Mechanical ', 'mechanical-', '', 2, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:09:01', '2014-10-07 20:09:01', NULL, NULL, NULL),
(3, 2, 3, 4, 2, 0, 0, NULL, 1, 0, 'CAD', 'cad', '', 3, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:09:13', '2014-10-07 20:09:13', NULL, NULL, NULL),
(4, 2, 7, 8, 2, 0, 0, NULL, 1, 0, 'Manufacturing', 'manufacturing', '', 7, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:09:27', '2014-10-07 20:09:27', NULL, NULL, NULL),
(5, 2, 5, 6, 2, 0, 0, NULL, 1, 0, 'Strategy/Game Play', 'stragity-game-play', '', 5, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:09:40', '2014-10-07 20:09:40', NULL, NULL, NULL),
(6, -1, 10, 17, 1, 0, 0, NULL, 1, 0, 'Electronic & Programing', 'electronic-programing', '', 10, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:10:29', '2014-10-07 20:10:29', NULL, NULL, NULL),
(7, 6, 11, 12, 2, 0, 0, NULL, 1, 0, 'CAD', 'cad-rograming', '', 11, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:10:51', '2014-10-07 20:10:51', NULL, NULL, NULL),
(8, 6, 13, 14, 2, 0, 0, NULL, 1, 0, 'Programing', 'programing', '', 13, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:11:18', '2014-10-07 20:11:18', NULL, NULL, NULL),
(9, 6, 15, 16, 2, 0, 0, NULL, 1, 0, 'Assembly', 'assembly', '', 15, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:11:32', '2014-10-07 20:11:32', NULL, NULL, NULL),
(10, -1, 18, 25, 1, 0, 0, NULL, 1, 0, 'Business', 'business', '', 18, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:11:48', '2014-10-07 20:11:48', NULL, NULL, NULL),
(11, 10, 21, 22, 2, 0, 0, NULL, 1, 0, 'Social Media', 'social-media', '', 21, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:11:59', '2014-10-07 20:11:59', NULL, NULL, NULL),
(12, 10, 23, 24, 2, 0, 0, NULL, 1, 0, 'Sponsorships', 'sponsorships', '', 23, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:12:14', '2014-10-07 20:12:14', NULL, NULL, NULL),
(13, 10, 19, 20, 2, 0, 0, NULL, 1, 0, 'Fundraising', 'fundraising', '', 19, '', NULL, -1, 0, 'Default', 1, 1, '2014-10-07 20:12:29', '2014-10-07 20:12:29', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Comment`
--

CREATE TABLE IF NOT EXISTS `GDN_Comment` (
`CommentID` int(11) NOT NULL,
  `DiscussionID` int(11) NOT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `DeleteUserID` int(11) DEFAULT NULL,
  `Body` text COLLATE utf8_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateInserted` datetime DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `InsertIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Flag` tinyint(4) NOT NULL DEFAULT '0',
  `Score` float DEFAULT NULL,
  `Attributes` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Conversation`
--

CREATE TABLE IF NOT EXISTS `GDN_Conversation` (
`ConversationID` int(11) NOT NULL,
  `Subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contributors` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FirstMessageID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime DEFAULT NULL,
  `InsertIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `UpdateIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CountMessages` int(11) NOT NULL DEFAULT '0',
  `LastMessageID` int(11) DEFAULT NULL,
  `RegardingID` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `GDN_Conversation`
--

INSERT INTO `GDN_Conversation` (`ConversationID`, `Subject`, `Contributors`, `FirstMessageID`, `InsertUserID`, `DateInserted`, `InsertIPAddress`, `UpdateUserID`, `DateUpdated`, `UpdateIPAddress`, `CountMessages`, `LastMessageID`, `RegardingID`) VALUES
(1, NULL, 'a:2:{i:0;s:1:"2";i:1;s:1:"1";}', NULL, 2, '2014-10-07 20:06:59', NULL, NULL, NULL, NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `GDN_ConversationMessage`
--

CREATE TABLE IF NOT EXISTS `GDN_ConversationMessage` (
`MessageID` int(11) NOT NULL,
  `ConversationID` int(11) NOT NULL,
  `Body` text COLLATE utf8_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `GDN_ConversationMessage`
--

INSERT INTO `GDN_ConversationMessage` (`MessageID`, `ConversationID`, `Body`, `Format`, `InsertUserID`, `DateInserted`, `InsertIPAddress`) VALUES
(1, 1, 'Pssst. Hey. A conversation is a private chat between two or more members. No one can see it except the members added. You can delete this one since I&rsquo;m just a bot and know better than to talk back.', 'Html', 2, '2014-10-07 20:06:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Discussion`
--

CREATE TABLE IF NOT EXISTS `GDN_Discussion` (
`DiscussionID` int(11) NOT NULL,
  `Type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ForeignID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CategoryID` int(11) NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `FirstCommentID` int(11) DEFAULT NULL,
  `LastCommentID` int(11) DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Body` text COLLATE utf8_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CountComments` int(11) NOT NULL DEFAULT '0',
  `CountBookmarks` int(11) DEFAULT NULL,
  `CountViews` int(11) NOT NULL DEFAULT '1',
  `Closed` tinyint(4) NOT NULL DEFAULT '0',
  `Announce` tinyint(4) NOT NULL DEFAULT '0',
  `Sink` tinyint(4) NOT NULL DEFAULT '0',
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `InsertIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateLastComment` datetime DEFAULT NULL,
  `LastCommentUserID` int(11) DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `Attributes` text COLLATE utf8_unicode_ci,
  `RegardingID` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Draft`
--

CREATE TABLE IF NOT EXISTS `GDN_Draft` (
`DraftID` int(11) NOT NULL,
  `DiscussionID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) NOT NULL,
  `UpdateUserID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Closed` tinyint(4) NOT NULL DEFAULT '0',
  `Announce` tinyint(4) NOT NULL DEFAULT '0',
  `Sink` tinyint(4) NOT NULL DEFAULT '0',
  `Body` text COLLATE utf8_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Flag`
--

CREATE TABLE IF NOT EXISTS `GDN_Flag` (
  `DiscussionID` int(11) DEFAULT NULL,
  `InsertUserID` int(11) NOT NULL,
  `InsertName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `AuthorID` int(11) NOT NULL,
  `AuthorName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `ForeignURL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ForeignID` int(11) NOT NULL,
  `ForeignType` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Comment` text COLLATE utf8_unicode_ci NOT NULL,
  `DateInserted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Invitation`
--

CREATE TABLE IF NOT EXISTS `GDN_Invitation` (
`InvitationID` int(11) NOT NULL,
  `Email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `AcceptedUserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Log`
--

CREATE TABLE IF NOT EXISTS `GDN_Log` (
`LogID` int(11) NOT NULL,
  `Operation` enum('Delete','Edit','Spam','Moderate','Pending','Ban','Error') COLLATE utf8_unicode_ci NOT NULL,
  `RecordType` enum('Discussion','Comment','User','Registration','Activity','ActivityComment','Configuration','Group') COLLATE utf8_unicode_ci NOT NULL,
  `TransactionLogID` int(11) DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `RecordUserID` int(11) DEFAULT NULL,
  `RecordDate` datetime NOT NULL,
  `RecordIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherUserIDs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `ParentRecordID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `Data` mediumtext COLLATE utf8_unicode_ci,
  `CountGroup` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `GDN_Log`
--

INSERT INTO `GDN_Log` (`LogID`, `Operation`, `RecordType`, `TransactionLogID`, `RecordID`, `RecordUserID`, `RecordDate`, `RecordIPAddress`, `InsertUserID`, `DateInserted`, `InsertIPAddress`, `OtherUserIDs`, `DateUpdated`, `ParentRecordID`, `CategoryID`, `Data`, `CountGroup`) VALUES
(1, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:07:01', NULL, 1, '2014-10-07 20:07:01', '127.0.0.1', '', NULL, NULL, NULL, 'a:1:{s:4:"_New";a:7:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:2:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";}s:6:"Garden";a:11:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(2, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:07:03', NULL, 1, '2014-10-07 20:07:03', '127.0.0.1', '', NULL, NULL, NULL, 'a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:2:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";}s:6:"Garden";a:11:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:2:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";}s:6:"Garden";a:11:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:1:{s:9:"Dashboard";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(3, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:07:12', NULL, 1, '2014-10-07 20:07:12', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:2:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";}s:6:"Garden";a:11:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:1:{s:9:"Dashboard";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:2:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:1:{s:4:"Name";s:9:"Bootstrap";}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:1:{s:9:"Dashboard";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(4, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:07:16', NULL, 1, '2014-10-07 20:07:16', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:2:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:1:{s:4:"Name";s:9:"Bootstrap";}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:1:{s:9:"Dashboard";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:2:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:1:{s:9:"Dashboard";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(5, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:07:37', NULL, 1, '2014-10-07 20:07:37', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:2:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:1:{s:9:"Dashboard";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:2:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(6, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:07:39', NULL, 1, '2014-10-07 20:07:39', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:2:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:3:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(7, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:07:45', NULL, 1, '2014-10-07 20:07:45', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:3:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:4:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(8, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:07:47', NULL, 1, '2014-10-07 20:07:47', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:4:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:5:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(9, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:07:50', NULL, 1, '2014-10-07 20:07:50', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:5:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:1:{s:17:"DefaultController";s:11:"discussions";}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:5:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(10, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:07:50', NULL, 1, '2014-10-07 20:07:50', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:5:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:6:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(11, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:07:56', NULL, 1, '2014-10-07 20:07:56', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:6:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:7:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(12, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:08:01', NULL, 1, '2014-10-07 20:08:01', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:7:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:8:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(13, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:08:05', NULL, 1, '2014-10-07 20:08:05', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:8:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(14, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:08:24', NULL, 1, '2014-10-07 20:08:24', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:2:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}}}', NULL),
(15, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:12:54', NULL, 1, '2014-10-07 20:12:54', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:1:{s:7:"Version";s:5:"2.1.3";}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:2:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:3:{s:15:"MaxDisplayDepth";s:1:"3";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;}}}}', NULL),
(16, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:12:59', NULL, 1, '2014-10-07 20:12:59', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:2:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:3:{s:15:"MaxDisplayDepth";s:1:"3";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;}}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:2:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:3:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;}}}}', NULL),
(17, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:13:10', NULL, 1, '2014-10-07 20:13:10', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";s:11:"discussions";s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:2:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:3:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;}}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";a:2:{i:0;s:10:"categories";i:1;s:8:"Internal";}s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:3:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:4:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;s:6:"Layout";s:5:"mixed";}s:11:"Discussions";a:1:{s:6:"Layout";s:6:"modern";}}}}', NULL),
(18, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:13:20', NULL, 1, '2014-10-07 20:13:20', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";a:2:{i:0;s:10:"categories";i:1;s:8:"Internal";}s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:3:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:4:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;s:6:"Layout";s:5:"mixed";}s:11:"Discussions";a:1:{s:6:"Layout";s:6:"modern";}}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";a:2:{i:0;s:10:"categories";i:1;s:8:"Internal";}s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:3:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:4:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;s:6:"Layout";s:6:"modern";}s:11:"Discussions";a:1:{s:6:"Layout";s:6:"modern";}}}}', NULL);
INSERT INTO `GDN_Log` (`LogID`, `Operation`, `RecordType`, `TransactionLogID`, `RecordID`, `RecordUserID`, `RecordDate`, `RecordIPAddress`, `InsertUserID`, `DateInserted`, `InsertIPAddress`, `OtherUserIDs`, `DateUpdated`, `ParentRecordID`, `CategoryID`, `Data`, `CountGroup`) VALUES
(19, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:13:48', NULL, 1, '2014-10-07 20:13:48', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";a:2:{i:0;s:10:"categories";i:1;s:8:"Internal";}s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:3:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:4:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;s:6:"Layout";s:6:"modern";}s:11:"Discussions";a:1:{s:6:"Layout";s:6:"modern";}}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";a:2:{i:0;s:10:"categories";i:1;s:8:"Internal";}s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:3:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:4:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;s:6:"Layout";s:5:"table";}s:11:"Discussions";a:1:{s:6:"Layout";s:6:"modern";}}}}', NULL),
(20, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:15:26', NULL, 1, '2014-10-07 20:15:26', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:13:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";a:2:{i:0;s:10:"categories";i:1;s:8:"Internal";}s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:3:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:4:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;s:6:"Layout";s:5:"table";}s:11:"Discussions";a:1:{s:6:"Layout";s:6:"modern";}}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:14:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}s:18:"EditContentTimeout";s:2:"-1";}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";a:2:{i:0;s:10:"categories";i:1;s:8:"Internal";}s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:6:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:4:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;s:6:"Layout";s:5:"table";}s:11:"Discussions";a:2:{s:6:"Layout";s:6:"modern";s:7:"PerPage";s:2:"30";}s:8:"Comments";a:2:{s:11:"AutoRefresh";N;s:7:"PerPage";s:2:"30";}s:7:"Archive";a:2:{s:4:"Date";s:0:"";s:7:"Exclude";b:0;}s:15:"AdminCheckboxes";a:1:{s:3:"Use";b:0;}}}}', NULL),
(21, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:16:27', NULL, 1, '2014-10-07 20:16:27', '127.0.0.1', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:14:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:1:{s:12:"ConfirmEmail";b:1;}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}s:18:"EditContentTimeout";s:2:"-1";}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:3:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";a:2:{i:0;s:10:"categories";i:1;s:8:"Internal";}s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:6:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:4:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;s:6:"Layout";s:5:"table";}s:11:"Discussions";a:2:{s:6:"Layout";s:6:"modern";s:7:"PerPage";s:2:"30";}s:8:"Comments";a:2:{s:11:"AutoRefresh";N;s:7:"PerPage";s:2:"30";}s:7:"Archive";a:2:{s:4:"Date";s:0:"";s:7:"Exclude";b:0;}s:15:"AdminCheckboxes";a:1:{s:3:"Use";b:0;}}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:14:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:7:{s:12:"ConfirmEmail";b:0;s:6:"Method";s:7:"Captcha";s:17:"CaptchaPrivateKey";s:40:"6Ld_FvsSAAAAAJdTH4acJ5mZvu_8GdEMqHUkzq0s";s:16:"CaptchaPublicKey";s:40:"6Ld_FvsSAAAAAGbLHhQEcPm3hnI3heyMG2msjJu7";s:16:"InviteExpiration";s:7:"-1 week";s:16:"ConfirmEmailRole";s:1:"8";s:11:"InviteRoles";a:5:{i:3;s:1:"0";i:4;s:1:"0";i:8;s:1:"0";i:16;s:1:"0";i:32;s:1:"0";}}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}s:18:"EditContentTimeout";s:2:"-1";}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:4:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";s:12:"Registration";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";a:2:{i:0;s:10:"categories";i:1;s:8:"Internal";}s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:6:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:4:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;s:6:"Layout";s:5:"table";}s:11:"Discussions";a:2:{s:6:"Layout";s:6:"modern";s:7:"PerPage";s:2:"30";}s:8:"Comments";a:2:{s:11:"AutoRefresh";N;s:7:"PerPage";s:2:"30";}s:7:"Archive";a:2:{s:4:"Date";s:0:"";s:7:"Exclude";b:0;}s:15:"AdminCheckboxes";a:1:{s:3:"Use";b:0;}}}}', NULL),
(22, 'Edit', 'Configuration', NULL, NULL, NULL, '2014-10-07 20:25:12', NULL, 0, '2014-10-07 20:25:12', '50.206.92.234', '', NULL, NULL, NULL, 'a:9:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:14:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:7:{s:12:"ConfirmEmail";b:0;s:6:"Method";s:7:"Captcha";s:17:"CaptchaPrivateKey";s:40:"6Ld_FvsSAAAAAJdTH4acJ5mZvu_8GdEMqHUkzq0s";s:16:"CaptchaPublicKey";s:40:"6Ld_FvsSAAAAAGbLHhQEcPm3hnI3heyMG2msjJu7";s:16:"InviteExpiration";s:7:"-1 week";s:16:"ConfirmEmailRole";s:1:"8";s:11:"InviteRoles";a:5:{i:3;s:1:"0";i:4;s:1:"0";i:8;s:1:"0";i:16;s:1:"0";i:32;s:1:"0";}}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}s:18:"EditContentTimeout";s:2:"-1";}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:4:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";s:12:"Registration";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";a:2:{i:0;s:10:"categories";i:1;s:8:"Internal";}s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:6:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:4:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;s:6:"Layout";s:5:"table";}s:11:"Discussions";a:2:{s:6:"Layout";s:6:"modern";s:7:"PerPage";s:2:"30";}s:8:"Comments";a:2:{s:11:"AutoRefresh";N;s:7:"PerPage";s:2:"30";}s:7:"Archive";a:2:{s:4:"Date";s:0:"";s:7:"Exclude";b:0;}s:15:"AdminCheckboxes";a:1:{s:3:"Use";b:0;}}s:4:"_New";a:8:{s:13:"Conversations";a:1:{s:7:"Version";s:5:"2.1.3";}s:8:"Database";a:4:{s:4:"Name";s:11:"DHSRobotics";s:4:"Host";s:9:"localhost";s:4:"User";s:4:"root";s:8:"Password";s:0:"";}s:19:"EnabledApplications";a:2:{s:13:"Conversations";s:13:"conversations";s:7:"Vanilla";s:7:"vanilla";}s:14:"EnabledPlugins";a:9:{s:14:"GettingStarted";s:14:"GettingStarted";s:8:"HtmLawed";s:8:"HtmLawed";s:9:"AllViewed";b:1;s:8:"Flagging";b:1;s:8:"Gravatar";b:1;s:14:"MembersListEnh";b:1;s:7:"Tagging";b:1;s:8:"CKEditor";b:1;s:12:"VanillaStats";b:1;}s:6:"Garden";a:16:{s:5:"Title";s:11:"DHSRobotics";s:6:"Cookie";a:2:{s:4:"Salt";s:10:"XRVUVFG4Y7";s:6:"Domain";s:0:"";}s:12:"Registration";a:7:{s:12:"ConfirmEmail";b:0;s:6:"Method";s:7:"Captcha";s:17:"CaptchaPrivateKey";s:40:"6Ld_FvsSAAAAAJdTH4acJ5mZvu_8GdEMqHUkzq0s";s:16:"CaptchaPublicKey";s:40:"6Ld_FvsSAAAAAGbLHhQEcPm3hnI3heyMG2msjJu7";s:16:"InviteExpiration";s:7:"-1 week";s:16:"ConfirmEmailRole";s:1:"8";s:11:"InviteRoles";a:5:{i:3;s:1:"0";i:4;s:1:"0";i:8;s:1:"0";i:16;s:1:"0";i:32;s:1:"0";}}s:5:"Email";a:1:{s:11:"SupportName";s:11:"DHSRobotics";}s:14:"InputFormatter";s:4:"Html";s:7:"Version";s:5:"2.1.3";s:11:"RewriteUrls";b:1;s:4:"Cdns";a:1:{s:7:"Disable";b:0;}s:16:"CanProcessImages";b:1;s:12:"SystemUserID";s:1:"2";s:9:"Installed";b:1;s:5:"Theme";s:9:"Bootstrap";s:12:"ThemeOptions";a:2:{s:4:"Name";s:9:"Bootstrap";s:6:"Styles";a:2:{s:3:"Key";s:7:"Default";s:5:"Value";s:10:"%s_default";}}s:18:"EditContentTimeout";s:2:"-1";s:14:"InstallationID";s:22:"A6CD-0E32656B-D8801D55";s:18:"InstallationSecret";s:40:"a877dda3b19caf9219d60bfb5b70b0619c11f57c";}s:7:"Plugins";a:1:{s:14:"GettingStarted";a:4:{s:9:"Dashboard";s:1:"1";s:7:"Plugins";s:1:"1";s:10:"Categories";s:1:"1";s:12:"Registration";s:1:"1";}}s:6:"Routes";a:2:{s:17:"DefaultController";a:2:{i:0;s:10:"categories";i:1;s:8:"Internal";}s:20:"Xm1lbWJlcnMoLy4qKT8k";a:2:{i:0;s:23:"plugin/MembersListEnh$1";i:1;s:8:"Internal";}}s:7:"Vanilla";a:6:{s:7:"Version";s:5:"2.1.3";s:10:"Categories";a:4:{s:15:"MaxDisplayDepth";s:1:"0";s:10:"DoHeadings";b:0;s:10:"HideModule";b:0;s:6:"Layout";s:5:"table";}s:11:"Discussions";a:2:{s:6:"Layout";s:6:"modern";s:7:"PerPage";s:2:"30";}s:8:"Comments";a:2:{s:11:"AutoRefresh";N;s:7:"PerPage";s:2:"30";}s:7:"Archive";a:2:{s:4:"Date";s:0:"";s:7:"Exclude";b:0;}s:15:"AdminCheckboxes";a:1:{s:3:"Use";b:0;}}}}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Media`
--

CREATE TABLE IF NOT EXISTS `GDN_Media` (
`MediaID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Type` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `Size` int(11) NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `ForeignID` int(11) DEFAULT NULL,
  `ForeignTable` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageWidth` smallint(5) unsigned DEFAULT NULL,
  `ImageHeight` smallint(5) unsigned DEFAULT NULL,
  `ThumbWidth` smallint(5) unsigned DEFAULT NULL,
  `ThumbHeight` smallint(5) unsigned DEFAULT NULL,
  `ThumbPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Message`
--

CREATE TABLE IF NOT EXISTS `GDN_Message` (
`MessageID` int(11) NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `Format` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AllowDismiss` tinyint(4) NOT NULL DEFAULT '1',
  `Enabled` tinyint(4) NOT NULL DEFAULT '1',
  `Application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssetTarget` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CssClass` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Permission`
--

CREATE TABLE IF NOT EXISTS `GDN_Permission` (
`PermissionID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  `JunctionTable` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `JunctionColumn` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `JunctionID` int(11) DEFAULT NULL,
  `Garden.Email.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Settings.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Settings.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Messages.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.SignIn.Allow` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Delete` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Users.Approve` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Activity.Delete` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Activity.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Profiles.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Profiles.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Moderation.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.Curation.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.PersonalInfo.View` tinyint(4) NOT NULL DEFAULT '0',
  `Garden.AdvancedNotifications.Allow` tinyint(4) NOT NULL DEFAULT '0',
  `Conversations.Moderation.Manage` tinyint(4) NOT NULL DEFAULT '0',
  `Conversations.Conversations.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Approval.Require` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Me` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.View` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Announce` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Sink` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Close` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Discussions.Delete` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Add` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Edit` tinyint(4) NOT NULL DEFAULT '0',
  `Vanilla.Comments.Delete` tinyint(4) NOT NULL DEFAULT '0',
  `Plugins.Flagging.Notify` tinyint(4) NOT NULL DEFAULT '0',
  `Plugins.MembersListEnh.IPEmailView` tinyint(4) NOT NULL DEFAULT '0',
  `Plugins.MembersListEnh.GenView` tinyint(4) NOT NULL DEFAULT '0',
  `Plugins.Tagging.Add` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `GDN_Permission`
--

INSERT INTO `GDN_Permission` (`PermissionID`, `RoleID`, `JunctionTable`, `JunctionColumn`, `JunctionID`, `Garden.Email.View`, `Garden.Settings.Manage`, `Garden.Settings.View`, `Garden.Messages.Manage`, `Garden.SignIn.Allow`, `Garden.Users.Add`, `Garden.Users.Edit`, `Garden.Users.Delete`, `Garden.Users.Approve`, `Garden.Activity.Delete`, `Garden.Activity.View`, `Garden.Profiles.View`, `Garden.Profiles.Edit`, `Garden.Moderation.Manage`, `Garden.Curation.Manage`, `Garden.PersonalInfo.View`, `Garden.AdvancedNotifications.Allow`, `Conversations.Moderation.Manage`, `Conversations.Conversations.Add`, `Vanilla.Approval.Require`, `Vanilla.Comments.Me`, `Vanilla.Discussions.View`, `Vanilla.Discussions.Add`, `Vanilla.Discussions.Edit`, `Vanilla.Discussions.Announce`, `Vanilla.Discussions.Sink`, `Vanilla.Discussions.Close`, `Vanilla.Discussions.Delete`, `Vanilla.Comments.Add`, `Vanilla.Comments.Edit`, `Vanilla.Comments.Delete`, `Plugins.Flagging.Notify`, `Plugins.MembersListEnh.IPEmailView`, `Plugins.MembersListEnh.GenView`, `Plugins.Tagging.Add`) VALUES
(1, 0, NULL, NULL, NULL, 3, 2, 2, 2, 3, 2, 2, 2, 2, 2, 3, 3, 3, 2, 2, 2, 2, 2, 3, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 3),
(2, 2, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, NULL, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 8, NULL, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(6, 32, NULL, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1),
(7, 16, NULL, NULL, NULL, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1),
(8, 0, 'Category', 'PermissionCategoryID', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 2, 2, 2, 2, 2, 3, 2, 2, 0, 0, 0, 0),
(9, 2, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 4, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 8, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(12, 32, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0),
(13, 16, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0),
(14, 33, NULL, NULL, NULL, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1),
(15, 33, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0),
(16, 34, NULL, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(17, 34, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(18, 35, NULL, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(19, 35, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(20, 36, NULL, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(21, 36, 'Category', 'PermissionCategoryID', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Regarding`
--

CREATE TABLE IF NOT EXISTS `GDN_Regarding` (
`RegardingID` int(11) NOT NULL,
  `Type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `ForeignType` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ForeignID` int(11) NOT NULL,
  `OriginalContent` text COLLATE utf8_unicode_ci,
  `ParentType` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `ForeignURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Comment` text COLLATE utf8_unicode_ci NOT NULL,
  `Reports` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Role`
--

CREATE TABLE IF NOT EXISTS `GDN_Role` (
`RoleID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL,
  `Deletable` tinyint(4) NOT NULL DEFAULT '1',
  `CanSession` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `GDN_Role`
--

INSERT INTO `GDN_Role` (`RoleID`, `Name`, `Description`, `Sort`, `Deletable`, `CanSession`) VALUES
(2, 'Guest', 'Guests can only view content. Anyone browsing the site who is not signed in is considered to be a "Guest".', 1, 0, 0),
(4, 'Applicant', 'Users who have applied for membership, but have not yet been accepted. They have the same permissions as guests.', 2, 0, 1),
(8, 'Member', 'Members can participate in discussions.', 3, 1, 1),
(16, 'Administrator', 'Administrators have permission to do anything.', 8, 1, 1),
(32, 'Moderator', 'Moderators have permission to edit most content.', 9, 1, 1),
(33, 'Advisor', 'An advisor of the Robotics Team ', 7, 1, 1),
(34, 'Mechanical Team', 'Someone on the Mechanical Team', 4, 1, 1),
(35, 'Electronic/Programing Team ', 'Someone on the Electronic/Programing Team', 5, 1, 1),
(36, 'Business Team', 'Someone on the Business team. ', 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Session`
--

CREATE TABLE IF NOT EXISTS `GDN_Session` (
  `SessionID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL DEFAULT '0',
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime NOT NULL,
  `TransientKey` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `Attributes` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Spammer`
--

CREATE TABLE IF NOT EXISTS `GDN_Spammer` (
  `UserID` int(11) NOT NULL,
  `CountSpam` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CountDeletedSpam` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_Tag`
--

CREATE TABLE IF NOT EXISTS `GDN_Tag` (
`TagID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `InsertUserID` int(11) DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `CategoryID` int(11) NOT NULL DEFAULT '-1',
  `CountDiscussions` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_TagDiscussion`
--

CREATE TABLE IF NOT EXISTS `GDN_TagDiscussion` (
  `TagID` int(11) NOT NULL,
  `DiscussionID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `DateInserted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_User`
--

CREATE TABLE IF NOT EXISTS `GDN_User` (
`UserID` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varbinary(100) NOT NULL,
  `HashMethod` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `About` text COLLATE utf8_unicode_ci,
  `Email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ShowEmail` tinyint(4) NOT NULL DEFAULT '0',
  `Gender` enum('u','m','f') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `CountVisits` int(11) NOT NULL DEFAULT '0',
  `CountInvitations` int(11) NOT NULL DEFAULT '0',
  `CountNotifications` int(11) DEFAULT NULL,
  `InviteUserID` int(11) DEFAULT NULL,
  `DiscoveryText` text COLLATE utf8_unicode_ci,
  `Preferences` text COLLATE utf8_unicode_ci,
  `Permissions` text COLLATE utf8_unicode_ci,
  `Attributes` text COLLATE utf8_unicode_ci,
  `DateSetInvitations` datetime DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `DateFirstVisit` datetime DEFAULT NULL,
  `DateLastActive` datetime DEFAULT NULL,
  `LastIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AllIPAddresses` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `UpdateIPAddress` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HourOffset` int(11) NOT NULL DEFAULT '0',
  `Score` float DEFAULT NULL,
  `Admin` tinyint(4) NOT NULL DEFAULT '0',
  `Verified` tinyint(4) NOT NULL DEFAULT '0',
  `Banned` tinyint(4) NOT NULL DEFAULT '0',
  `Deleted` tinyint(4) NOT NULL DEFAULT '0',
  `Points` int(11) NOT NULL DEFAULT '0',
  `CountUnreadConversations` int(11) DEFAULT NULL,
  `CountDiscussions` int(11) DEFAULT NULL,
  `CountUnreadDiscussions` int(11) DEFAULT NULL,
  `CountComments` int(11) DEFAULT NULL,
  `CountDrafts` int(11) DEFAULT NULL,
  `CountBookmarks` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `GDN_User`
--

INSERT INTO `GDN_User` (`UserID`, `Name`, `Password`, `HashMethod`, `Photo`, `Title`, `Location`, `About`, `Email`, `ShowEmail`, `Gender`, `CountVisits`, `CountInvitations`, `CountNotifications`, `InviteUserID`, `DiscoveryText`, `Preferences`, `Permissions`, `Attributes`, `DateSetInvitations`, `DateOfBirth`, `DateFirstVisit`, `DateLastActive`, `LastIPAddress`, `AllIPAddresses`, `DateInserted`, `InsertIPAddress`, `DateUpdated`, `UpdateIPAddress`, `HourOffset`, `Score`, `Admin`, `Verified`, `Banned`, `Deleted`, `Points`, `CountUnreadConversations`, `CountDiscussions`, `CountUnreadDiscussions`, `CountComments`, `CountDrafts`, `CountBookmarks`) VALUES
(1, 'KyleKnobloch', 0x2450244242697864424458726a6b577278706477416e586254556a3051414d696b2e, 'Vanilla', 'userpics/503/35I85FOJFH73.png', NULL, NULL, NULL, 'Kyleknobloch@duxbury.k12.ma.us', 1, 'u', 7, 0, NULL, NULL, NULL, 'a:2:{s:16:"PreviewThemeName";s:0:"";s:18:"PreviewThemeFolder";s:0:"";}', '', 'a:1:{s:12:"TransientKey";s:12:"P6RWTS0T5YGT";}', NULL, '1975-09-16 00:00:00', '2014-10-07 20:06:57', '2014-10-14 18:38:48', '50.206.92.234', '108.49.39.246,127.0.0.1,173.32.34.222,50.206.92.234,75.67.93.81', '2014-10-07 20:06:57', '127.0.0.1', '2014-10-08 12:52:41', '50.206.92.234', -4, NULL, 1, 1, 0, 0, 0, NULL, 0, NULL, 0, NULL, NULL),
(2, 'System', 0x515656455943354158314a5a4f4a423047334654, 'Random', 'http://localhost/DHSRobotics/forums/applications/dashboard/design/images/usericon.png', NULL, NULL, NULL, 'system@domain.com', 0, 'u', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-10-07 20:06:59', NULL, NULL, NULL, 0, NULL, 2, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserAuthentication`
--

CREATE TABLE IF NOT EXISTS `GDN_UserAuthentication` (
  `ForeignUserKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ProviderKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserAuthenticationNonce`
--

CREATE TABLE IF NOT EXISTS `GDN_UserAuthenticationNonce` (
  `Nonce` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserAuthenticationProvider`
--

CREATE TABLE IF NOT EXISTS `GDN_UserAuthenticationProvider` (
  `AuthenticationKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `AuthenticationSchemeAlias` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssociationSecret` text COLLATE utf8_unicode_ci,
  `AssociationHashMethod` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AuthenticateUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RegisterUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SignInUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SignOutUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PasswordUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProfileUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Attributes` text COLLATE utf8_unicode_ci,
  `IsDefault` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserAuthenticationToken`
--

CREATE TABLE IF NOT EXISTS `GDN_UserAuthenticationToken` (
  `Token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ProviderKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `ForeignUserKey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TokenSecret` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `TokenType` enum('request','access') COLLATE utf8_unicode_ci NOT NULL,
  `Authorized` tinyint(4) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Lifetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserCategory`
--

CREATE TABLE IF NOT EXISTS `GDN_UserCategory` (
  `UserID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `DateMarkedRead` datetime DEFAULT NULL,
  `Unfollow` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserComment`
--

CREATE TABLE IF NOT EXISTS `GDN_UserComment` (
  `UserID` int(11) NOT NULL,
  `CommentID` int(11) NOT NULL,
  `Score` float DEFAULT NULL,
  `DateLastViewed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserConversation`
--

CREATE TABLE IF NOT EXISTS `GDN_UserConversation` (
  `UserID` int(11) NOT NULL,
  `ConversationID` int(11) NOT NULL,
  `CountReadMessages` int(11) NOT NULL DEFAULT '0',
  `LastMessageID` int(11) DEFAULT NULL,
  `DateLastViewed` datetime DEFAULT NULL,
  `DateCleared` datetime DEFAULT NULL,
  `Bookmarked` tinyint(4) NOT NULL DEFAULT '0',
  `Deleted` tinyint(4) NOT NULL DEFAULT '0',
  `DateConversationUpdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `GDN_UserConversation`
--

INSERT INTO `GDN_UserConversation` (`UserID`, `ConversationID`, `CountReadMessages`, `LastMessageID`, `DateLastViewed`, `DateCleared`, `Bookmarked`, `Deleted`, `DateConversationUpdated`) VALUES
(1, 1, 0, 1, NULL, NULL, 0, 0, '2014-10-07 20:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserDiscussion`
--

CREATE TABLE IF NOT EXISTS `GDN_UserDiscussion` (
  `UserID` int(11) NOT NULL,
  `DiscussionID` int(11) NOT NULL,
  `Score` float DEFAULT NULL,
  `CountComments` int(11) NOT NULL DEFAULT '0',
  `DateLastViewed` datetime DEFAULT NULL,
  `Dismissed` tinyint(4) NOT NULL DEFAULT '0',
  `Bookmarked` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserMerge`
--

CREATE TABLE IF NOT EXISTS `GDN_UserMerge` (
`MergeID` int(11) NOT NULL,
  `OldUserID` int(11) NOT NULL,
  `NewUserID` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `InsertUserID` int(11) NOT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `UpdateUserID` int(11) DEFAULT NULL,
  `Attributes` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserMergeItem`
--

CREATE TABLE IF NOT EXISTS `GDN_UserMergeItem` (
  `MergeID` int(11) NOT NULL,
  `Table` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Column` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `RecordID` int(11) NOT NULL,
  `OldUserID` int(11) NOT NULL,
  `NewUserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserMeta`
--

CREATE TABLE IF NOT EXISTS `GDN_UserMeta` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `GDN_UserMeta`
--

INSERT INTO `GDN_UserMeta` (`UserID`, `Name`, `Value`) VALUES
(0, 'Garden.Analytics.LastSentDate', '20141102');

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserPoints`
--

CREATE TABLE IF NOT EXISTS `GDN_UserPoints` (
  `SlotType` enum('d','w','m','y','a') COLLATE utf8_unicode_ci NOT NULL,
  `TimeSlot` datetime NOT NULL,
  `Source` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Total',
  `UserID` int(11) NOT NULL,
  `Points` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GDN_UserRole`
--

CREATE TABLE IF NOT EXISTS `GDN_UserRole` (
  `UserID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `GDN_UserRole`
--

INSERT INTO `GDN_UserRole` (`UserID`, `RoleID`) VALUES
(0, 2),
(1, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `GDN_Activity`
--
ALTER TABLE `GDN_Activity`
 ADD PRIMARY KEY (`ActivityID`), ADD KEY `IX_Activity_Notify` (`NotifyUserID`,`Notified`), ADD KEY `IX_Activity_Recent` (`NotifyUserID`,`DateUpdated`), ADD KEY `IX_Activity_Feed` (`NotifyUserID`,`ActivityUserID`,`DateUpdated`), ADD KEY `IX_Activity_DateUpdated` (`DateUpdated`), ADD KEY `FK_Activity_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `GDN_ActivityComment`
--
ALTER TABLE `GDN_ActivityComment`
 ADD PRIMARY KEY (`ActivityCommentID`), ADD KEY `FK_ActivityComment_ActivityID` (`ActivityID`);

--
-- Indexes for table `GDN_ActivityType`
--
ALTER TABLE `GDN_ActivityType`
 ADD PRIMARY KEY (`ActivityTypeID`);

--
-- Indexes for table `GDN_AnalyticsLocal`
--
ALTER TABLE `GDN_AnalyticsLocal`
 ADD UNIQUE KEY `UX_AnalyticsLocal` (`TimeSlot`);

--
-- Indexes for table `GDN_Ban`
--
ALTER TABLE `GDN_Ban`
 ADD PRIMARY KEY (`BanID`), ADD UNIQUE KEY `UX_Ban` (`BanType`,`BanValue`);

--
-- Indexes for table `GDN_Category`
--
ALTER TABLE `GDN_Category`
 ADD PRIMARY KEY (`CategoryID`), ADD KEY `FK_Category_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `GDN_Comment`
--
ALTER TABLE `GDN_Comment`
 ADD PRIMARY KEY (`CommentID`), ADD KEY `IX_Comment_1` (`DiscussionID`,`DateInserted`), ADD KEY `IX_Comment_DateInserted` (`DateInserted`), ADD KEY `FK_Comment_InsertUserID` (`InsertUserID`), ADD FULLTEXT KEY `TX_Comment` (`Body`);

--
-- Indexes for table `GDN_Conversation`
--
ALTER TABLE `GDN_Conversation`
 ADD PRIMARY KEY (`ConversationID`), ADD KEY `FK_Conversation_FirstMessageID` (`FirstMessageID`), ADD KEY `FK_Conversation_InsertUserID` (`InsertUserID`), ADD KEY `FK_Conversation_DateInserted` (`DateInserted`), ADD KEY `FK_Conversation_UpdateUserID` (`UpdateUserID`), ADD KEY `IX_Conversation_RegardingID` (`RegardingID`);

--
-- Indexes for table `GDN_ConversationMessage`
--
ALTER TABLE `GDN_ConversationMessage`
 ADD PRIMARY KEY (`MessageID`), ADD KEY `FK_ConversationMessage_ConversationID` (`ConversationID`), ADD KEY `FK_ConversationMessage_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `GDN_Discussion`
--
ALTER TABLE `GDN_Discussion`
 ADD PRIMARY KEY (`DiscussionID`), ADD KEY `IX_Discussion_Type` (`Type`), ADD KEY `IX_Discussion_ForeignID` (`ForeignID`), ADD KEY `IX_Discussion_DateInserted` (`DateInserted`), ADD KEY `IX_Discussion_DateLastComment` (`DateLastComment`), ADD KEY `IX_Discussion_RegardingID` (`RegardingID`), ADD KEY `IX_Discussion_CategoryPages` (`CategoryID`,`DateLastComment`), ADD KEY `FK_Discussion_CategoryID` (`CategoryID`), ADD KEY `FK_Discussion_InsertUserID` (`InsertUserID`), ADD FULLTEXT KEY `TX_Discussion` (`Name`,`Body`);

--
-- Indexes for table `GDN_Draft`
--
ALTER TABLE `GDN_Draft`
 ADD PRIMARY KEY (`DraftID`), ADD KEY `FK_Draft_DiscussionID` (`DiscussionID`), ADD KEY `FK_Draft_CategoryID` (`CategoryID`), ADD KEY `FK_Draft_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `GDN_Flag`
--
ALTER TABLE `GDN_Flag`
 ADD KEY `FK_Flag_InsertUserID` (`InsertUserID`), ADD KEY `FK_Flag_ForeignURL` (`ForeignURL`);

--
-- Indexes for table `GDN_Invitation`
--
ALTER TABLE `GDN_Invitation`
 ADD PRIMARY KEY (`InvitationID`), ADD KEY `FK_Invitation_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `GDN_Log`
--
ALTER TABLE `GDN_Log`
 ADD PRIMARY KEY (`LogID`), ADD KEY `IX_Log_RecordType` (`RecordType`), ADD KEY `IX_Log_RecordID` (`RecordID`), ADD KEY `IX_Log_RecordIPAddress` (`RecordIPAddress`), ADD KEY `IX_Log_ParentRecordID` (`ParentRecordID`), ADD KEY `FK_Log_CategoryID` (`CategoryID`);

--
-- Indexes for table `GDN_Media`
--
ALTER TABLE `GDN_Media`
 ADD PRIMARY KEY (`MediaID`);

--
-- Indexes for table `GDN_Message`
--
ALTER TABLE `GDN_Message`
 ADD PRIMARY KEY (`MessageID`);

--
-- Indexes for table `GDN_Permission`
--
ALTER TABLE `GDN_Permission`
 ADD PRIMARY KEY (`PermissionID`), ADD KEY `FK_Permission_RoleID` (`RoleID`);

--
-- Indexes for table `GDN_Regarding`
--
ALTER TABLE `GDN_Regarding`
 ADD PRIMARY KEY (`RegardingID`), ADD KEY `FK_Regarding_Type` (`Type`);

--
-- Indexes for table `GDN_Role`
--
ALTER TABLE `GDN_Role`
 ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `GDN_Session`
--
ALTER TABLE `GDN_Session`
 ADD PRIMARY KEY (`SessionID`);

--
-- Indexes for table `GDN_Spammer`
--
ALTER TABLE `GDN_Spammer`
 ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `GDN_Tag`
--
ALTER TABLE `GDN_Tag`
 ADD PRIMARY KEY (`TagID`), ADD UNIQUE KEY `UX_Tag` (`Name`,`CategoryID`), ADD KEY `IX_Tag_Type` (`Type`), ADD KEY `FK_Tag_InsertUserID` (`InsertUserID`);

--
-- Indexes for table `GDN_TagDiscussion`
--
ALTER TABLE `GDN_TagDiscussion`
 ADD PRIMARY KEY (`TagID`,`DiscussionID`), ADD KEY `IX_TagDiscussion_CategoryID` (`CategoryID`);

--
-- Indexes for table `GDN_User`
--
ALTER TABLE `GDN_User`
 ADD PRIMARY KEY (`UserID`), ADD KEY `FK_User_Name` (`Name`), ADD KEY `IX_User_Email` (`Email`), ADD KEY `IX_User_DateLastActive` (`DateLastActive`), ADD KEY `IX_User_DateInserted` (`DateInserted`);

--
-- Indexes for table `GDN_UserAuthentication`
--
ALTER TABLE `GDN_UserAuthentication`
 ADD PRIMARY KEY (`ForeignUserKey`,`ProviderKey`), ADD KEY `FK_UserAuthentication_UserID` (`UserID`);

--
-- Indexes for table `GDN_UserAuthenticationNonce`
--
ALTER TABLE `GDN_UserAuthenticationNonce`
 ADD PRIMARY KEY (`Nonce`);

--
-- Indexes for table `GDN_UserAuthenticationProvider`
--
ALTER TABLE `GDN_UserAuthenticationProvider`
 ADD PRIMARY KEY (`AuthenticationKey`);

--
-- Indexes for table `GDN_UserAuthenticationToken`
--
ALTER TABLE `GDN_UserAuthenticationToken`
 ADD PRIMARY KEY (`Token`,`ProviderKey`);

--
-- Indexes for table `GDN_UserCategory`
--
ALTER TABLE `GDN_UserCategory`
 ADD PRIMARY KEY (`UserID`,`CategoryID`);

--
-- Indexes for table `GDN_UserComment`
--
ALTER TABLE `GDN_UserComment`
 ADD PRIMARY KEY (`UserID`,`CommentID`);

--
-- Indexes for table `GDN_UserConversation`
--
ALTER TABLE `GDN_UserConversation`
 ADD PRIMARY KEY (`UserID`,`ConversationID`), ADD KEY `IX_UserConversation_Inbox` (`UserID`,`Deleted`,`DateConversationUpdated`), ADD KEY `FK_UserConversation_ConversationID` (`ConversationID`);

--
-- Indexes for table `GDN_UserDiscussion`
--
ALTER TABLE `GDN_UserDiscussion`
 ADD PRIMARY KEY (`UserID`,`DiscussionID`), ADD KEY `FK_UserDiscussion_DiscussionID` (`DiscussionID`);

--
-- Indexes for table `GDN_UserMerge`
--
ALTER TABLE `GDN_UserMerge`
 ADD PRIMARY KEY (`MergeID`), ADD KEY `FK_UserMerge_OldUserID` (`OldUserID`), ADD KEY `FK_UserMerge_NewUserID` (`NewUserID`);

--
-- Indexes for table `GDN_UserMergeItem`
--
ALTER TABLE `GDN_UserMergeItem`
 ADD KEY `FK_UserMergeItem_MergeID` (`MergeID`);

--
-- Indexes for table `GDN_UserMeta`
--
ALTER TABLE `GDN_UserMeta`
 ADD PRIMARY KEY (`UserID`,`Name`), ADD KEY `IX_UserMeta_Name` (`Name`);

--
-- Indexes for table `GDN_UserPoints`
--
ALTER TABLE `GDN_UserPoints`
 ADD PRIMARY KEY (`SlotType`,`TimeSlot`,`Source`,`UserID`);

--
-- Indexes for table `GDN_UserRole`
--
ALTER TABLE `GDN_UserRole`
 ADD PRIMARY KEY (`UserID`,`RoleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `GDN_Activity`
--
ALTER TABLE `GDN_Activity`
MODIFY `ActivityID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `GDN_ActivityComment`
--
ALTER TABLE `GDN_ActivityComment`
MODIFY `ActivityCommentID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GDN_ActivityType`
--
ALTER TABLE `GDN_ActivityType`
MODIFY `ActivityTypeID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `GDN_Ban`
--
ALTER TABLE `GDN_Ban`
MODIFY `BanID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GDN_Category`
--
ALTER TABLE `GDN_Category`
MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `GDN_Comment`
--
ALTER TABLE `GDN_Comment`
MODIFY `CommentID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `GDN_Conversation`
--
ALTER TABLE `GDN_Conversation`
MODIFY `ConversationID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `GDN_ConversationMessage`
--
ALTER TABLE `GDN_ConversationMessage`
MODIFY `MessageID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `GDN_Discussion`
--
ALTER TABLE `GDN_Discussion`
MODIFY `DiscussionID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `GDN_Draft`
--
ALTER TABLE `GDN_Draft`
MODIFY `DraftID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GDN_Invitation`
--
ALTER TABLE `GDN_Invitation`
MODIFY `InvitationID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GDN_Log`
--
ALTER TABLE `GDN_Log`
MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `GDN_Media`
--
ALTER TABLE `GDN_Media`
MODIFY `MediaID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GDN_Message`
--
ALTER TABLE `GDN_Message`
MODIFY `MessageID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GDN_Permission`
--
ALTER TABLE `GDN_Permission`
MODIFY `PermissionID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `GDN_Regarding`
--
ALTER TABLE `GDN_Regarding`
MODIFY `RegardingID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GDN_Role`
--
ALTER TABLE `GDN_Role`
MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `GDN_Tag`
--
ALTER TABLE `GDN_Tag`
MODIFY `TagID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GDN_User`
--
ALTER TABLE `GDN_User`
MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `GDN_UserMerge`
--
ALTER TABLE `GDN_UserMerge`
MODIFY `MergeID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
