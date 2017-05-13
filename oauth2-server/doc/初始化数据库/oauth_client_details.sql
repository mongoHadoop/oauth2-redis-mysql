/*
Navicat MySQL Data Transfer

Source Server         : 192.168.2.35
Source Server Version : 50173
Source Host           : 192.168.2.35:3306
Source Database       : redis-oauth2

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-05-13 11:41:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(255) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('client_auth_mode', null, '$2a$10$.GCl9SMgNUCavNgdP4hji.bQLl86HCs0gDWSO9BBbXk7Sn9Z0/zLq', 'read,write', 'client_credentials,refresh_token', null, 'USER', '2592000', null, null, null);
INSERT INTO `oauth_client_details` VALUES ('password_auth_mode', '', '$2a$10$.GCl9SMgNUCavNgdP4hji.bQLl86HCs0gDWSO9BBbXk7Sn9Z0/zLq', 'read,write', 'refresh_token,password', null, 'USER', '2592000', null, null, null);



SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ux_member
-- ----------------------------
DROP TABLE IF EXISTS `ux_member`;
CREATE TABLE `ux_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `cap` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `family_name` varchar(255) DEFAULT NULL,
  `hobbies` varchar(255) DEFAULT NULL,
  `location_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `push_type` int(11) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ux_member
-- ----------------------------
INSERT INTO `ux_member` VALUES ('1', '2017-05-12 17:11:30', '2017-05-12 17:11:33', 'password_mode', '15019271280', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
