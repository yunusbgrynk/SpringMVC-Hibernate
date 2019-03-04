CREATE DATABASE  IF NOT EXISTS `customer_list`
USE `customer_list`;

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


INSERT INTO `customer` VALUES 
	(1,'name1','LastName1','email1','country1'),
	(2,'name2’,’LastName2','email2','country2'),
	(3,'name3','LastName3','email3','country3'),
	(4,'name4','LastName4','email4','country4'),
	(5,'name5','LastName5','email5','country5');
