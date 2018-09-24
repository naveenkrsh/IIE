-- phpMyAdmin SQL Dump
-- version 3.3.2
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Ven 29 Mars 2013 à 13:31
-- Version du serveur: 5.1.41
-- Version de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `category`(
	`id` int(11)  NOT NULL,
	`categoryname` nvarchar(500) NULL
 	
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into `category` (`id`, `categoryname`) values (1, 'account lockout')
insert into `category` (`id`, `categoryname`) values (2, 'application error')
insert into `category` (`id`, `categoryname`) values (3, 'application failure')
insert into `category` (`id`, `categoryname`) values (4, 'application security')
insert into `category` (`id`, `categoryname`) values (5, 'backup')
insert into `category` (`id`, `categoryname`) values (6, 'benefits management')
insert into `category` (`id`, `categoryname`) values (7, 'cable failure')
insert into `category` (`id`, `categoryname`) values (8, 'capacity')
insert into `category` (`id`, `categoryname`) values (9, 'client failure')
insert into `category` (`id`, `categoryname`) values (10, 'computer provisioning')
insert into `category` (`id`, `categoryname`) values (11, 'connection failure')
insert into `category` (`id`, `categoryname`) values (12, 'connectivity')
insert into `category` (`id`, `categoryname`) values (13, 'corrupt mailbox')
insert into `category` (`id`, `categoryname`) values (14, 'data corruptio')
insert into `category` (`id`, `categoryname`) values (15, 'data loss')
insert into `category` (`id`, `categoryname`) values (16, 'delivery failure')
insert into `category` (`id`, `categoryname`) values (17, 'demo category')
insert into `category` (`id`, `categoryname`) values (18, 'desktop hardware')
insert into `category` (`id`, `categoryname`) values (19, 'desktop software')
insert into `category` (`id`, `categoryname`) values (20, 'device failure')
insert into `category` (`id`, `categoryname`) values (21, 'enterprise application service')
insert into `category` (`id`, `categoryname`) values (22, 'error message')
insert into `category` (`id`, `categoryname`) values (23, 'facility maintenance')
insert into `category` (`id`, `categoryname`) values (24, 'facility safety')
insert into `category` (`id`, `categoryname`) values (25, 'facility security')
insert into `category` (`id`, `categoryname`) values (26, 'functionality')
insert into `category` (`id`, `categoryname`) values (27, 'hard drive failure')
insert into `category` (`id`, `categoryname`) values (28, 'hardware')
insert into `category` (`id`, `categoryname`) values (29, 'how-to')
insert into `category` (`id`, `categoryname`) values (30, 'incorrect address book')
insert into `category` (`id`, `categoryname`) values (31, 'internet failure')
insert into `category` (`id`, `categoryname`) values (32, 'misconduct')
insert into `category` (`id`, `categoryname`) values (33, 'missing item')
insert into `category` (`id`, `categoryname`) values (34, 'network folder failure')
insert into `category` (`id`, `categoryname`) values (35, 'no dial tone')
insert into `category` (`id`, `categoryname`) values (36, 'non-delivery')
insert into `category` (`id`, `categoryname`) values (37, 'out of disk space')
insert into `category` (`id`, `categoryname`) values (38, 'performance')
insert into `category` (`id`, `categoryname`) values (39, 'performance issue')
insert into `category` (`id`, `categoryname`) values (40, 'printer failure')
insert into `category` (`id`, `categoryname`) values (41, 'service desk')
insert into `category` (`id`, `categoryname`) values (42, 'software failure')
insert into `category` (`id`, `categoryname`) values (43, 'software installatio')
insert into `category` (`id`, `categoryname`) values (44, 'software request')
insert into `category` (`id`, `categoryname`) values (45, 'telephone failure')
insert into `category` (`id`, `categoryname`) values (46, 'virus/trojan ')
insert into `category` (`id`, `categoryname`) values (47, 'voicemail issue')


-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS  `incident`(
	`id` int(11) not null,
	`categoryid` int(11) null,
	`cause` nvarchar(255) null,
	`closedby` nvarchar(255) null,
	`closeddatetime` nvarchar(255) null,
	`closedduration` nvarchar(255) null,
	`createdby` nvarchar(255) null,
	`createddatetime` nvarchar(255) null,
	`email` nvarchar(255) null,
	`impact` nvarchar(255) null,
	`incidentnumber` nvarchar(255) null,
	`lastmodby` nvarchar(255) null,
	`lastmoddatetime` nvarchar(255) null,
	`phone` nvarchar(255) null,
	`priority` nvarchar(255) null,
	`resolution` nvarchar(255) null,
	`service` nvarchar(255) null,
	`sla` nvarchar(255) null,
	`source` nvarchar(255) null,
	`status` nvarchar(255) null,
	`subject` nvarchar(255) null,
	`symptom` nvarchar(255) null,
	`urgency` nvarchar(255) null,
	`customerlocation` nvarchar(255) null,
	`actualservice` nvarchar(255) null
  
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (1, 33, 'other', 'jclerk', '2011-07-31 00:09:48', '3974400', 'jclerk', '2011-07-24 23:42:48', 'kdavidson@saasitdemo.com', 'medium', '10244', 'jclerk', '2011-07-31 00:09:48', '+61.2.8080.3300
', '3', 'resolved with user', 'facilities management', null, 'email', 'closed', 'remote control for projector in boardroom is are missing', 'this is an issue as it is roof mounted and cannot be switched on/off without the remote', 'medium', 'western europe', 'facilities management')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (2, 1, 'other', 'jclerk', '2011-09-29 15:04:00', '2966400', 'admin', '2011-09-20 08:42:00', 'mhendrics@saasitdemo.com', 'medium', '10325', 'jclerk', '2011-09-29 15:04:00', '+1 719.531.5007
', '3', 'resolved with user', 'email service', 'email service (gold) for sales and marketing', 'phone', 'closed', 'cannot get into email - says invalid credentials have been supplied', 'will not logon via windows authentication', 'medium', 'canada', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (3, 40, 'other', 'jclerk', '2011-03-31 21:09:37', '6451200', 'admin', '2011-03-25 20:42:37', 'sharon.lowe@saasitdemo.com', 'medium', '10073', 'jclerk', '2011-03-31 21:09:37', '+1 925.398.1800
', '3', 'resolved with user', 'printing service', null, 'phone', 'closed', 'check the printer', 'new installed printer in the lab area is not working. toner', 'medium', 'east coast', 'printing service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (4, 25, null, null, null, null, 'rthomas', '2011-12-07 06:42:47', 'rwright@saasitdemo.com', 'medium', '10435', 'rthomas', '2012-01-28 10:30:28', '+65.6829 2147', '3', null, 'facilities management', null, 'self service', 'active', 'my employee badge never works on monday.', 'employee badge never works when i arrive at the secure locations on mondays.', 'medium', 'central', 'facilities management')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (5, 1, 'other', 'jclerk', '2011-05-15 09:15:12', '5558400', 'admin', '2011-05-10 04:42:00', 'blevitt@saasitdemo.com', 'medium', '10137', 'jclerk', '2011-05-15 09:15:12', '+86 10 8520 0424', '3', 'resolved with user', 'desktop service', 'desktop service (gold) for sales and marketing', 'phone', 'closed', 'needs password reset.', 'password reset for vital services.', 'medium', 'western europe', 'desktop service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (6, 24, 'other', 'jclerk', '2011-05-15 21:38:00', '5558400', 'jclerk', '2011-05-10 21:42:19', 'tjordan@saasitdemo.com', 'medium', '10138', 'jclerk', '2011-05-15 21:38:00', '+61.2.8080.3300
', '3', 'resolved with user', 'facilities management', null, 'phone', 'closed', 'training room in building 4 does not have adequate wheelchair access.', 'user needs wider wheelchair ramp to accommodate side basket.  also submitted a request to add to service catalog.', 'medium', 'west', 'facilities management')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (7, 47, 'other', 'rthomas', '2011-04-18 05:30:14', '6131146', 'rthomas', '2011-04-11 03:42:14', 'hwalsh@saasitdemo.com', 'low', '10096', 'rthomas', '2011-04-18 05:30:14', '+33(0) 155 681 060', '4', 'resolved with user', 'communications services', null, 'voice mail', 'closed', 'my voicemail box is full and it says it is unavailable when i try to access it.', 'voicemail problem', 'medium', 'west coast', 'communications services')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (8, 12, null, null, null, null, 'jclerk', '2011-12-12 22:42:47', 'tjordan@saasitdemo.com', 'low', '10443', 'jclerk', '2012-01-28 08:06:28', '+61.2.8080.3300
', '3', null, 'mobile communication', null, 'phone', 'active', 'cannot connect to vp', 'vpn will not connect, saying unable to connect to domain', 'high', 'west', 'mobile communication')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (9, 19, null, null, null, null, 'rthomas', '2011-11-18 20:42:38', 'pemerson@saasitdemo.com', 'medium', '10409', 'rthomas', '2012-01-28 18:18:28', '+44 (0)1635 516700

', '3', null, 'desktop service', 'desktop service (gold) for sales and marketing', 'phone', 'active', 'cannot open powerpoint presentation in office 2010', 'word document is password protected.  how to access it.', 'medium', 'west coast', 'desktop service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (10, 1, 'other', 'rthomas', '2011-03-06 09:05:26', '6901618', 'rthomas', '2011-03-02 11:42:02', 'gkirk@saasitdemo.com', 'medium', '10040', 'rthomas', '2011-03-06 09:05:26', '+44 (0)1635 516700

', '3', 'resolved with user', 'desktop service', 'desktop service (gold) for sales and marketing', 'phone', 'closed', 'forgot password, account locked out', 'cannot login to the domain', 'medium', 'northern europe', 'desktop service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (11, 28, 'other', 'jsmith', '2011-02-24 03:08:24', '7056000', 'admin', '2011-02-20 13:42:00', 'grichards@saasitdemo.com', 'medium', '10026', 'jsmith', '2011-02-24 03:08:24', '+86 10 8520 0424', '3', 'resolved with user', 'desktop service', 'desktop service (gold) for sales and marketing', 'self service', 'closed', 'network cable broken, cannot access network', 'needs a new network cable as current one has broken', 'medium', 'northern europe', 'desktop service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (12, 1, 'other', null, null, null, 'admin', '2012-01-10 23:42:00', 'lmiller@saasitdemo.com', 'low', '10484', 'jsmith', '2012-01-12 07:27:00', '+1 719.531.5007
', '3', 'resolved with user', 'email service', 'email service (silver) for finance', 'phone', 'resolved', 'outlook inbox is frozen', 'outlook inbox is frozen', 'high', 'central', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (13, 13, 'other', null, null, null, 'sdavis', '2011-12-20 00:42:42', 'rknowles@saasitdemo.com', 'low', '10453', 'sdavis', '2011-12-26 12:08:00', '+86 10 8520 0424', '3', 'resolved with user', 'email service', 'email service (gold) for sales and marketing', 'self service', 'resolved', 'error message saying mailbox is corrupt', 'cannot archive any emails as trying to do so presents a message saying the mailbox is corrupt', 'high', 'eastern europe', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (14, 24, 'other', 'sdavis', '2011-08-14 04:46:36', '3686400', 'sdavis', '2011-08-08 03:42:39', 'gkirk@saasitdemo.com', 'medium', '10264', 'sdavis', '2011-08-14 04:46:36', '+44 (0)1635 516700

', '2', 'resolved with user', 'facilities management', null, 'phone', 'closed', 'there is a bird trapped in the office.', 'a bird has found its way into the building and is flying around the workspaces.  it is very disruptive.', 'high', 'northern europe', 'facilities management')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (15, 9, 'software', null, null, null, 'admin', '2011-11-08 05:42:27', 'mhendrics@saasitdemo.com', 'medium', '10394', 'jsmith', '2012-01-28 22:48:28', '+1 719.531.5007
', '3', 'fgadf', 'email service', 'email service (gold) for sales and marketing', 'phone', 'active', 'email is not working', 'email is not working', 'medium', 'canada', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (16, 33, 'other', 'admin', '2013-04-29 02:51:00', '6780', 'jclerk', '2012-01-04 14:42:25', 'admin@saasitdemo.com', 'high', '10475', 'admin', '2013-04-29 02:52:03', '7195551254', '1', 'resolved with user', 'printing service', null, 'voice mail', 'closed', 'print job has not arrived yet.', 'print job has not arrived for board meeting.  needs to escalate this to high priority.', 'high', 'usa', 'printing service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (17, 1, 'other', 'jsmith', '2011-05-07 07:36:00', '5711040', 'admin', '2011-04-30 06:42:00', 'mhendrics@saasitdemo.com', 'high', '10123', 'jsmith', '2011-05-07 07:36:00', '+1 719.531.5007
', '2', 'automatically closed', 'email service', 'email service (gold) for sales and marketing', 'phone', 'closed', 'e-mail is down', 'autoclosed', 'medium', 'canada', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (18, 11, 'other', 'sdavis', '2011-04-25 22:45:31', '5897549', 'sdavis', '2011-04-21 18:42:31', 'acope@saasitdemo.com', 'low', '10111', 'sdavis', '2011-04-25 22:45:31', '+1 925.398.1800
', '4', 'resolved with user', 'mobile communication', null, 'email', 'closed', 'email problem on mobile smart phone', 'email access on mobile device', 'medium', 'east coast', 'mobile communication')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (19, 1, 'other', null, null, null, 'admin', '2011-11-24 12:42:29', 'blevitt@saasitdemo.com', 'medium', '10417', 'rthomas', '2011-11-28 14:29:00', '+86 10 8520 0424', '3', 'resolved with user', 'email service', 'email service (gold) for sales and marketing', 'phone', 'resolved', 'creating the new incident in application', 'this is a new incident as employee selection is not working', 'medium', 'western europe', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (20, 34, 'linked problem', null, null, null, 'self service', '2012-01-23 17:42:09', 'rthomas@saasitdemo.com', 'medium', '10502', 'frs_wendy', '2017-06-22 22:04:47', '+27 (0)11 575 7555 
', '2', 'autoclose', 'network service', null, 'phone', 'logged', 'reporting network access time out', 'network access time out in the south africa office when attempting to access shared network resources.', 'high', 'canada', 'network service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (21, 9, null, null, null, null, 'admin', '2013-12-13 03:04:33', null, 'low', '10934', 'internalservices', '2013-12-27 18:59:35', null, '4', null, 'email service', null, 'phone', 'active', 'email down', 'cannot open outlook', 'medium', 'usa', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (22, null, null, null, null, null, 'frs_wendy', '2015-08-14 22:43:15', 'wendy@test.com', null, '11048', 'internalservices', '2015-08-14 22:43:59', null, '3', null, 'service desk', null, 'self service', 'logged', 'report incident issue', 'report incident issue', null, null, 'service desk')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (23, 24, 'other', 'rthomas', '2011-05-22 02:30:50', '5494030', 'rthomas', '2011-05-13 00:42:50', 'pemerson@saasitdemo.com', 'medium', '10141', 'rthomas', '2011-05-22 02:30:50', '+44 (0)1635 516700

', '3', 'resolved with user', 'facilities management', null, 'phone', 'closed', 'training room in building 4 does not have adequate wheelchair access.', 'user needs wider wheelchair ramp to accommodate side basket.  also submitted a request to add to service catalog.', 'medium', 'west coast', 'facilities management')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (24, 1, 'hardware', 'rthomas', '2011-08-28 04:05:00', '3484800', 'admin', '2011-08-18 18:42:00', 'tdiggins@saasitdemo.com', 'medium', '10279', 'rthomas', '2011-08-28 04:05:00', '+86 10 8520 0424', '3', 'this is the test', 'email service', 'email service (gold) for sales and marketing', 'phone', 'closed', 'email inbox hangs', 'email inbox hangs', 'medium', 'west coast', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (25, 1, 'other', 'jclerk', '2011-09-27 04:14:00', '2966400', 'administrator admin', '2011-09-21 01:42:00', 'sharon.lowe@saasitdemo.com', 'medium', '10326', 'jclerk', '2011-09-27 04:14:00', '+1 925.398.1800
', '3', 'automatically closed', 'email service', 'email service (silver) for human resources', 'phone', 'closed', 'e-mail is down', 'autoclosed', 'medium', 'east coast', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (26, 1, 'other', 'jsmith', '2011-03-13 01:15:00', '6854400', 'admin', '2011-03-03 21:42:41', 'bthomson@saasitdemo.com', 'medium', '10042', 'jsmith', '2011-03-13 01:15:00', '+1 719.531.5007
', '3', 'resolved with user', 'email service', null, 'phone', 'closed', 'email not working', 'asdfsadfas', 'medium', 'east coast', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (27, 12, 'other', 'sdavis', '2011-04-05 03:09:18', '6422400', 'sdavis', '2011-03-30 02:42:18', 'rknowles@saasitdemo.com', 'low', '10079', 'sdavis', '2011-04-05 03:09:18', '+86 10 8520 0424', '3', 'resolved with user', 'payroll administration', null, 'phone', 'closed', 'user reports online payroll site is down and needs access immediately.', 'user is victim of identity theft and needs to reset password and check on unauthorized access.', 'high', 'eastern europe', 'payroll administration')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (28, 40, 'other', 'rthomas', '2011-07-13 01:34:01', '4313195', 'rthomas', '2011-07-05 20:42:25', 'joe.mayo@saasitdemo.com', 'low', '10217', 'rthomas', '2011-07-13 01:34:01', '+1 925.398.1800
', '3', 'resolved with user', 'desktop service', 'desktop service (gold) for sales and marketing', 'phone', 'closed', 'printer is generating error 10', 'error 10 on printer', 'high', 'west', 'desktop service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (29, 16, 'other', 'jsmith', '2011-08-15 15:34:00', '3657600', 'admin', '2011-08-10 06:42:00', 'cain@saasitdemo.com', 'medium', '10267', 'jsmith', '2011-08-15 15:34:00', '+33(0) 155 681 060', '3', 'resolved with user', 'email service', 'email service (gold) for sales and marketing', 'phone', 'closed', 'can''t turn her out of office on for mail', 'it returns strange error message.', 'medium', 'east coast', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (30, 1, null, null, null, null, 'administrator admin', '2011-12-18 14:42:02', 'cain@saasitdemo.com', 'medium', '10451', 'jclerk', '2012-01-28 05:42:28', '+33(0) 155 681 060', '3', null, 'email service', 'email service (gold) for sales and marketing', 'phone', 'waiting for resolution', 'email down', 'customer failed to login to windows for more than 5 attempts', 'medium', 'east coast', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (31, 26, 'other', 'sdavis', '2011-08-22 16:09:43', '3542400', 'sdavis', '2011-08-16 15:42:43', 'jpitt@saasitdemo.com', 'low', '10276', 'sdavis', '2011-08-22 16:09:43', '+44 (0)1635 516700

', '3', 'resolved with user', 'communications services', null, 'walk-in', 'closed', 'phone has very bad echo.  no other users in vicinity experiencing issue.', 'needs the line checked.', 'high', 'eastern europe', 'communications services')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (32, 29, 'other', 'rthomas', '2011-04-25 02:36:55', '5929565', 'rthomas', '2011-04-21 01:42:55', 'gkirk@saasitdemo.com', 'low', '10110', 'rthomas', '2011-04-25 02:36:55', '+44 (0)1635 516700

', '4', 'resolved with user', 'mobile communication', null, 'email', 'closed', 'how to migrate previous iphone data to new phone.', 'user needs to migrate old iphone data to new phone.  does not want to lose apps and other settings.', 'medium', 'northern europe', 'mobile communication')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (33, 19, 'other', 'rthomas', '2011-10-20 13:05:45', '2527599', 'rthomas', '2011-10-17 06:42:21', 'gkirk@saasitdemo.com', 'low', '10363', 'rthomas', '2011-10-20 13:05:45', '+44 (0)1635 516700

', '4', 'resolved with user', 'desktop service', 'desktop service (gold) for sales and marketing', 'frontrange voice', 'closed', 'internet explorer will not load the web interface for erp, but firefox will.', 'user reports that ie will no longer open the erp web interface.  firefox seems to work just fine.', 'medium', 'northern europe', 'desktop service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (34, 11, 'other', null, null, null, 'rthomas', '2012-01-17 08:42:35', 'ttech@saasitdemo.com', 'low', '10493', 'rthomas', '2012-01-18 10:03:35', '+27 (0)11 575 7555 
', '4', 'resolved with user', 'mobile communication', null, 'email', 'resolved', 'email problem on mobile smart phone', 'email access on mobile device', 'medium', 'east coast', 'mobile communication')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (35, 3, 'other', 'jclerk', '2011-09-24 23:09:27', '2995200', 'admin', '2011-09-18 22:42:27', 'jacob.clerk@saasitdemo.com', 'medium', '10323', 'jclerk', '2011-09-24 23:09:27', '+1 719.531.5007
', '3', 'resolved with user', 'desktop service', 'desktop service (gold) for sales and marketing', 'phone', 'closed', 'outlook hangs', 'not able to login', 'medium', 'west coast', 'desktop service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (36, 47, 'other', null, null, null, 'sdavis', '2011-12-14 08:42:56', 'blevitt@saasitdemo.com', 'medium', '10445', 'sdavis', '2011-12-18 20:08:00', '+86 10 8520 0424', '3', 'resolved with user', 'communications services', null, 'phone', 'resolved', 'unable to retrieve voicemail, forgotten pin number', 'cannot access voicemail and need to retrieve messages urgently', 'medium', 'western europe', 'communications services')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (37, 34, 'other', 'jclerk', '2011-04-05 11:10:00', '6336000', 'admin', '2011-04-01 05:42:12', 'sharon.lowe@saasitdemo.com', 'medium', '10082', 'jclerk', '2011-04-05 11:10:00', '+1 925.398.1800
', '3', 'resolved with user', 'network service', null, 'phone', 'closed', 'cannot access shared drive', 'this is a escalation', 'medium', 'east coast', 'network service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (38, 12, 'configuration', 'frs_wendy', '2015-06-22 21:14:42', '110482308', 'jclerk', '2011-12-22 03:42:55', 'internalservices@saasitdemo.com', 'high', '10456', 'frs_wendy', '2015-06-22 21:14:43', '1', '1', 'completed', 'service desk', null, 'network monitor', 'closed', 'master incident', 'master incident', 'high', 'west coast', 'service desk')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (39, 19, 'other', 'sdavis', '2011-02-23 18:09:31', '7099889', 'sdavis', '2011-02-17 17:42:31', 'pemerson@saasitdemo.com', 'medium', '10022', 'sdavis', '2011-02-23 18:09:31', '+44 (0)1635 516700

', '3', 'resolved with user', 'desktop service', 'desktop service (gold) for sales and marketing', 'phone', 'closed', 'word document is password protected.', 'word document is password protected.  how to access it.', 'medium', 'west coast', 'desktop service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (40, 9, 'hardware', 'jclerk', '2011-08-29 01:09:14', '3398400', 'administrator admin', '2011-08-23 00:42:14', 'blevitt@saasitdemo.com', 'low', '10285', 'jclerk', '2011-08-29 01:09:14', '+86 10 8520 0424', '4', 'retr', 'email service', 'email service (gold) for sales and marketing', 'phone', 'closed', 'email down', 'cannot open outlook', 'medium', 'western europe', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (41, 40, 'other', 'rthomas', '2011-09-14 21:12:24', '3110400', 'rthomas', '2011-09-09 17:42:41', 'joe.mayo@saasitdemo.com', 'medium', '10310', 'rthomas', '2011-09-14 21:12:24', '+1 925.398.1800
', '2', 'resolved with user', 'desktop service', 'desktop service (gold) for sales and marketing', 'self service', 'closed', 'printer is jamming with labels.', 'printer is jamming with the new brand of labels.  other users are experiencing the same issue.', 'high', 'west', 'desktop service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (42, 1, null, null, null, null, 'self service', '2011-12-16 11:42:38', 'rknowles@saasitdemo.com', 'medium', '10448', 'jclerk', '2012-01-28 06:36:28', '+86 10 8520 0424', '3', null, 'email service', 'email service (gold) for sales and marketing', 'phone', 'active', 'created incident for jsmith', 'is the customer name populated', 'medium', 'eastern europe', 'email service')

insert `incident` (`id`, `categoryid`, `cause`, `closedby`, `closeddatetime`, `closedduration`, `createdby`, `createddatetime`, `email`, `impact`, `incidentnumber`, `lastmodby`, `lastmoddatetime`, `phone`, `priority`, `resolution`, `service`, `sla`, `source`, `status`, `subject`, `symptom`, `urgency`, `customerlocation`, `actualservice`) values (43, 14, 'hardware', 'jclerk', '2011-04-30 13:54:00', '5846400', 'admin', '2011-04-25 07:42:59', 'mhendrics@saasitdemo.com', 'medium', '10116', 'jclerk', '2011-04-30 13:54:00', '+1 719.531.5007
', '3', 'autoclose', 'crm service', null, 'phone', 'closed', 'this is to ensure vip checkbox is seen now', 'this is to ensure vip checkbox is seen now', 'medium', 'canada', 'crm service')


-- --------------------------------------------------------



alter table `category`
    add primary key (`id`),
    add key `id` (`id`);

alter table `incident`
    add primary key (`id`),
    add key `categoryid` (`categoryid`);

alter table `incident`
  modify `id` int(11) not null auto_increment, auto_increment=31;


ALTER TABLE `incident`
    ADD CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`);

