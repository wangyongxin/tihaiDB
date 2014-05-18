CREATE TABLE IF NOT EXISTS `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdate` datetime DEFAULT NULL COMMENT '创建日期',
  `modifydate` datetime DEFAULT NULL COMMENT '修改日期',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `name` varchar(255) NOT NULL COMMENT '昵称',
  `department` varchar(255) DEFAULT NULL COMMENT '部门',
  `isenabled` bit(1) NOT NULL COMMENT '是否启用',
  `islocked` bit(1) NOT NULL COMMENT '是否锁定',
  `loginfailurecount` int(11) DEFAULT '0' COMMENT '登陆失败次数',
  `lockeddate` datetime DEFAULT NULL COMMENT '锁定日期',
  `logindate` datetime DEFAULT NULL COMMENT '登陆日期',
  `loginip` varchar(255) DEFAULT NULL COMMENT '登陆IP',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdate` datetime DEFAULT NULL COMMENT '创建日期',
  `modifydate` datetime DEFAULT NULL COMMENT '修改日期',
  `name` varchar(255) NOT NULL COMMENT '角色名称',
  `description` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `issystem` bit(1) NOT NULL COMMENT '是否系统内置',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
/
CREATE TABLE IF NOT EXISTS `wang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
/