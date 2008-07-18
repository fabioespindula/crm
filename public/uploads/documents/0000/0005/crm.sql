# CocoaMySQL dump
# Version 0.7b5
# http://cocoamysql.sourceforge.net
#
# Host: localhost (MySQL 5.0.51a)
# Database: crm_development_new
# Generation Time: 2008-07-04 13:58:53 -0400
# ************************************************************

# Dump of table contracts
# ------------------------------------------------------------

CREATE TABLE `contracts` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `started_at` datetime NOT NULL,
  `ended_at` datetime default NULL,
  `value` float default NULL,
  `leader_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `contracts` (`id`,`name`,`code`,`desc`,`status`,`started_at`,`ended_at`,`value`,`leader_id`,`project_id`,`created_at`,`updated_at`) VALUES ('1','Finance','#143','Talks about money...','prospecting','2008-07-01 00:00:00','2008-07-01 00:00:00','1','1','1','2008-07-01 01:46:02','2008-07-01 01:46:02');
INSERT INTO `contracts` (`id`,`name`,`code`,`desc`,`status`,`started_at`,`ended_at`,`value`,`leader_id`,`project_id`,`created_at`,`updated_at`) VALUES ('2','Times','#256','How\'s long is will be.','canceled','2008-07-01 00:00:00','2010-07-01 00:00:00','5','2','2','2008-07-01 01:46:58','2008-07-04 00:32:35');


# Dump of table customers
# ------------------------------------------------------------

CREATE TABLE `customers` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `desc` text,
  `rating` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `phone_country_code` int(11) default NULL,
  `phone_area_code` int(11) default NULL,
  `phone_number` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `customers` (`id`,`name`,`desc`,`rating`,`created_at`,`updated_at`,`phone_country_code`,`phone_area_code`,`phone_number`) VALUES ('1','Hedralink','simple web app.','2','2008-07-01 00:46:47','2008-07-01 19:11:11','781','346','8685');
INSERT INTO `customers` (`id`,`name`,`desc`,`rating`,`created_at`,`updated_at`,`phone_country_code`,`phone_area_code`,`phone_number`) VALUES ('2','CFC Sucena','Auto Escola','3','2008-07-01 00:47:00','2008-07-01 19:11:34','601','246','7245');
INSERT INTO `customers` (`id`,`name`,`desc`,`rating`,`created_at`,`updated_at`,`phone_country_code`,`phone_area_code`,`phone_number`) VALUES ('3','TownConnect','Connect family, friends and community.','4','2008-07-01 00:47:50','2008-07-01 19:11:49','798','315','0875');


# Dump of table documents
# ------------------------------------------------------------

CREATE TABLE `documents` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `desc` text,
  `filename` varchar(255) default NULL,
  `size` int(11) default NULL,
  `content_type` varchar(255) default NULL,
  `project_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `documents` (`id`,`title`,`desc`,`filename`,`size`,`content_type`,`project_id`,`created_at`,`updated_at`) VALUES ('1','Test','thats a test','workflow.jpg','268275','image/jpeg','1','2008-07-04 00:30:09','2008-07-04 00:30:09');
INSERT INTO `documents` (`id`,`title`,`desc`,`filename`,`size`,`content_type`,`project_id`,`created_at`,`updated_at`) VALUES ('2','Test2','test2','avatar.jpg','3038','image/jpeg','1','2008-07-04 00:31:20','2008-07-04 00:31:20');
INSERT INTO `documents` (`id`,`title`,`desc`,`filename`,`size`,`content_type`,`project_id`,`created_at`,`updated_at`) VALUES ('3','Big title','thats a big title!','bsaoBras.jpg','21964','image/jpeg','2','2008-07-04 00:32:08','2008-07-04 00:32:08');
INSERT INTO `documents` (`id`,`title`,`desc`,`filename`,`size`,`content_type`,`project_id`,`created_at`,`updated_at`) VALUES ('4','Foto do Fabio','Foto minha, bem lindo!','avatar.jpg','3038','image/jpeg','3','2008-07-04 00:33:38','2008-07-04 00:33:38');


# Dump of table logs
# ------------------------------------------------------------

CREATE TABLE `logs` (
  `id` int(11) NOT NULL auto_increment,
  `message` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `logs` (`id`,`message`,`created_at`,`updated_at`) VALUES ('1','Task: \'Check Account, update by \'Bruna Kunhasky\'.','2008-07-04 00:34:55','2008-07-04 00:34:55');
INSERT INTO `logs` (`id`,`message`,`created_at`,`updated_at`) VALUES ('2','Task: \'Download Images, update by \'Fabio Espindula\'.','2008-07-04 00:35:12','2008-07-04 00:35:12');


# Dump of table projects
# ------------------------------------------------------------

CREATE TABLE `projects` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `desc` text,
  `customer_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `active` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `projects` (`id`,`name`,`desc`,`customer_id`,`created_at`,`updated_at`,`active`) VALUES ('1','Sistema 1','Intranet','1','2008-07-04 00:11:07','2008-07-04 00:11:07',NULL);
INSERT INTO `projects` (`id`,`name`,`desc`,`customer_id`,`created_at`,`updated_at`,`active`) VALUES ('2','Sistema 2','Web','2','2008-07-04 00:31:45','2008-07-04 00:32:47',NULL);
INSERT INTO `projects` (`id`,`name`,`desc`,`customer_id`,`created_at`,`updated_at`,`active`) VALUES ('3','Sistema 3','Via SSH','1','2008-07-04 00:33:15','2008-07-04 00:33:15',NULL);


# Dump of table projects_members
# ------------------------------------------------------------

CREATE TABLE `projects_members` (
  `project_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `projects_members` (`project_id`,`member_id`) VALUES ('1','1');
INSERT INTO `projects_members` (`project_id`,`member_id`) VALUES ('1','2');
INSERT INTO `projects_members` (`project_id`,`member_id`) VALUES ('2','1');
INSERT INTO `projects_members` (`project_id`,`member_id`) VALUES ('2','2');
INSERT INTO `projects_members` (`project_id`,`member_id`) VALUES ('3','1');
INSERT INTO `projects_members` (`project_id`,`member_id`) VALUES ('3','2');


# Dump of table schema_migrations
# ------------------------------------------------------------

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `schema_migrations` (`version`) VALUES ('20080628214331');
INSERT INTO `schema_migrations` (`version`) VALUES ('20080628214527');
INSERT INTO `schema_migrations` (`version`) VALUES ('20080628221300');
INSERT INTO `schema_migrations` (`version`) VALUES ('20080628221941');
INSERT INTO `schema_migrations` (`version`) VALUES ('20080628222110');
INSERT INTO `schema_migrations` (`version`) VALUES ('20080628222430');
INSERT INTO `schema_migrations` (`version`) VALUES ('20080629162652');
INSERT INTO `schema_migrations` (`version`) VALUES ('20080630224257');
INSERT INTO `schema_migrations` (`version`) VALUES ('20080630232433');
INSERT INTO `schema_migrations` (`version`) VALUES ('20080701184702');
INSERT INTO `schema_migrations` (`version`) VALUES ('20080703221005');


# Dump of table tasks
# ------------------------------------------------------------

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `progress` int(11) default NULL,
  `started_at` datetime default NULL,
  `ended_at` datetime default NULL,
  `project_id` int(11) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `tasks` (`id`,`title`,`desc`,`status`,`owner_id`,`priority`,`progress`,`started_at`,`ended_at`,`project_id`,`created_at`,`updated_at`) VALUES ('1','Resize images','All images on same size.','open','1','normal','50','2008-07-01 00:00:00','2013-07-01 00:00:00','1','2008-07-01 01:18:12','2008-07-01 01:18:12');
INSERT INTO `tasks` (`id`,`title`,`desc`,`status`,`owner_id`,`priority`,`progress`,`started_at`,`ended_at`,`project_id`,`created_at`,`updated_at`) VALUES ('2','Download Images','Before you change its sizes.','open','1','high','80','2008-07-01 00:00:00','2012-07-01 00:00:00','1','2008-07-01 01:18:48','2008-07-04 00:35:12');
INSERT INTO `tasks` (`id`,`title`,`desc`,`status`,`owner_id`,`priority`,`progress`,`started_at`,`ended_at`,`project_id`,`created_at`,`updated_at`) VALUES ('3','Create DB','Using Mysql or Oracle.','closed','1','low','30','2008-07-01 00:00:00','2009-12-29 00:00:00','1','2008-07-01 01:19:23','2008-07-01 01:20:31');
INSERT INTO `tasks` (`id`,`title`,`desc`,`status`,`owner_id`,`priority`,`progress`,`started_at`,`ended_at`,`project_id`,`created_at`,`updated_at`) VALUES ('4','Check Account','All moneys entry and exits...','open','2','high','50','2008-07-01 00:00:00','2013-02-01 00:00:00','2','2008-07-01 01:20:01','2008-07-04 00:34:55');


# Dump of table users
# ------------------------------------------------------------

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `login` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`,`name`,`login`,`password`,`kind`,`created_at`,`updated_at`) VALUES ('1','Fabio Espindula','fabio','123456','administrador','2008-07-01 00:32:00','2008-07-01 00:32:00');
INSERT INTO `users` (`id`,`name`,`login`,`password`,`kind`,`created_at`,`updated_at`) VALUES ('2','Bruna Kunhasky','bruna','passwd','user','2008-07-01 00:32:38','2008-07-01 00:32:38');


