/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t028`;
CREATE DATABASE IF NOT EXISTS `t028` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t028`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootbqv00/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootbqv00/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootbqv00/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussfangyuanxinxi`;
CREATE TABLE IF NOT EXISTS `discussfangyuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612136541 DEFAULT CHARSET=utf8mb3 COMMENT='房源信息评论表';

DELETE FROM `discussfangyuanxinxi`;
INSERT INTO `discussfangyuanxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(101, '2021-03-13 04:37:46', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(102, '2021-03-13 04:37:46', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(103, '2021-03-13 04:37:46', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(104, '2021-03-13 04:37:46', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(105, '2021-03-13 04:37:46', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(106, '2021-03-13 04:37:46', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1615612136540, '2021-03-13 05:08:56', 31, 11, '用户1', '111', NULL);

DROP TABLE IF EXISTS `fangyuanleixing`;
CREATE TABLE IF NOT EXISTS `fangyuanleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanleixing` varchar(200) NOT NULL COMMENT '房源类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangyuanleixing` (`fangyuanleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612470012 DEFAULT CHARSET=utf8mb3 COMMENT='房源类型';

DELETE FROM `fangyuanleixing`;
INSERT INTO `fangyuanleixing` (`id`, `addtime`, `fangyuanleixing`) VALUES
	(41, '2021-03-13 04:37:46', '房源类型1'),
	(42, '2021-03-13 04:37:46', '房源类型2'),
	(43, '2021-03-13 04:37:46', '房源类型3'),
	(44, '2021-03-13 04:37:46', '房源类型4'),
	(45, '2021-03-13 04:37:46', '房源类型5'),
	(46, '2021-03-13 04:37:46', '6'),
	(1615612470011, '2021-03-13 05:14:29', '7');

DROP TABLE IF EXISTS `fangyuanxinxi`;
CREATE TABLE IF NOT EXISTS `fangyuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangyuanhuxing` varchar(200) DEFAULT NULL COMMENT '房源户型',
  `fangyuantupian` varchar(200) DEFAULT NULL COMMENT '房源图片',
  `suozaiquyu` varchar(200) DEFAULT NULL COMMENT '所在区域',
  `fangyuanweizhi` varchar(200) DEFAULT NULL COMMENT '房源位置',
  `fangyuanmianji` float DEFAULT NULL COMMENT '房源面积',
  `meimijiage` float DEFAULT NULL COMMENT '每米价格',
  `zongji` float DEFAULT NULL COMMENT '总计',
  `fangyuanjieshao` longtext COMMENT '房源介绍',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `xiaoshouzhanghao` varchar(200) DEFAULT NULL COMMENT '销售账号',
  `xiaoshouxingming` varchar(200) DEFAULT NULL COMMENT '销售姓名',
  `xiaoshoushouji` varchar(200) DEFAULT NULL COMMENT '销售手机',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612314331 DEFAULT CHARSET=utf8mb3 COMMENT='房源信息';

DELETE FROM `fangyuanxinxi`;
INSERT INTO `fangyuanxinxi` (`id`, `addtime`, `fangyuanmingcheng`, `fangyuanleixing`, `fangyuanhuxing`, `fangyuantupian`, `suozaiquyu`, `fangyuanweizhi`, `fangyuanmianji`, `meimijiage`, `zongji`, `fangyuanjieshao`, `fabushijian`, `xiaoshouzhanghao`, `xiaoshouxingming`, `xiaoshoushouji`, `clicktime`, `clicknum`) VALUES
	(31, '2021-03-13 04:37:46', '房源名称1', '房源类型1', '房源户型1', 'http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian1.jpg', '所在区域1', '房源位置1', 1, 1, 1, '房源介绍1', '2021-03-13 12:37:46', '销售账号1', '销售姓名1', '13823888881', '2024-01-03 13:07:51', 12),
	(32, '2021-03-13 04:37:46', '房源名称2', '房源类型2', '房源户型2', 'http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian2.jpg', '所在区域2', '房源位置2', 2, 2, 2, '房源介绍2', '2021-03-13 12:37:46', '销售账号2', '销售姓名2', '13823888882', '2024-01-03 13:09:11', 6),
	(33, '2021-03-13 04:37:46', '房源名称3', '房源类型3', '房源户型3', 'http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian3.jpg', '所在区域3', '房源位置3', 3, 3, 3, '房源介绍3', '2021-03-13 12:37:46', '销售账号3', '销售姓名3', '13823888883', '2024-01-03 13:11:03', 5),
	(34, '2021-03-13 04:37:46', '房源名称4', '房源类型4', '房源户型4', 'http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian4.jpg', '所在区域4', '房源位置4', 4, 4, 4, '房源介绍4', '2021-03-13 12:37:46', '销售账号4', '销售姓名4', '13823888884', '2021-03-13 12:37:46', 4),
	(35, '2021-03-13 04:37:46', '房源名称5', '房源类型5', '房源户型5', 'http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian5.jpg', '所在区域5', '房源位置5', 5, 5, 5, '房源介绍5', '2021-03-13 12:37:46', '销售账号5', '销售姓名5', '13823888885', '2021-03-13 12:37:46', 5),
	(36, '2021-03-13 04:37:46', '房源名称6', '房源类型6', '房源户型6', 'http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian6.jpg', '所在区域6', '房源位置6', 6, 6, 6, '房源介绍6', '2021-03-13 12:37:46', '销售账号6', '销售姓名6', '13823888886', '2021-03-13 12:37:46', 6),
	(1615612314330, '2021-03-13 05:11:53', '11', '房源类型2', '房子户型3', 'http://localhost:8080/springbootbqv00/upload/1615612283230.jpg', '11', '11', 111, 1000, 111000, '<p>11<img src="http://localhost:8080/springbootbqv00/upload/1615612303255.jpg"></p><p><br></p><p><img src="http://localhost:8080/springbootbqv00/upload/1615612311688.jpg"></p>', '2021-03-13 13:10:20', '销售账号1', '销售姓名1', '13823888881', '2021-03-13 13:14:20', 2);

DROP TABLE IF EXISTS `fangzihuxing`;
CREATE TABLE IF NOT EXISTS `fangzihuxing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangzihuxing` varchar(200) NOT NULL COMMENT '房子户型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangzihuxing` (`fangzihuxing`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612484051 DEFAULT CHARSET=utf8mb3 COMMENT='房子户型';

DELETE FROM `fangzihuxing`;
INSERT INTO `fangzihuxing` (`id`, `addtime`, `fangzihuxing`) VALUES
	(51, '2021-03-13 04:37:46', '房子户型1'),
	(52, '2021-03-13 04:37:46', '房子户型2'),
	(53, '2021-03-13 04:37:46', '房子户型3'),
	(54, '2021-03-13 04:37:46', '房子户型4'),
	(55, '2021-03-13 04:37:46', '房子户型5'),
	(56, '2021-03-13 04:37:46', '6'),
	(1615612484050, '2021-03-13 05:14:43', '7');

DROP TABLE IF EXISTS `jiaoyidingdan`;
CREATE TABLE IF NOT EXISTS `jiaoyidingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangyuanhuxing` varchar(200) DEFAULT NULL COMMENT '房源户型',
  `fangyuantupian` varchar(200) DEFAULT NULL COMMENT '房源图片',
  `zongji` varchar(200) DEFAULT NULL COMMENT '总计',
  `xiaoshouzhanghao` varchar(200) DEFAULT NULL COMMENT '销售账号',
  `xiaoshouxingming` varchar(200) DEFAULT NULL COMMENT '销售姓名',
  `jiaoyishijian` datetime DEFAULT NULL COMMENT '交易时间',
  `beizhu` longtext COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612151859 DEFAULT CHARSET=utf8mb3 COMMENT='交易订单';

DELETE FROM `jiaoyidingdan`;
INSERT INTO `jiaoyidingdan` (`id`, `addtime`, `zhanghao`, `xingming`, `dingdanbianhao`, `fangyuanmingcheng`, `fangyuanleixing`, `fangyuanhuxing`, `fangyuantupian`, `zongji`, `xiaoshouzhanghao`, `xiaoshouxingming`, `jiaoyishijian`, `beizhu`, `ispay`) VALUES
	(61, '2021-03-13 04:37:46', '账号1', '姓名1', '订单编号1', '房源名称1', '房源类型1', '房源户型1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '总计1', '销售账号1', '销售姓名1', '2021-03-13 12:37:46', '备注1', '未支付'),
	(62, '2021-03-13 04:37:46', '账号2', '姓名2', '订单编号2', '房源名称2', '房源类型2', '房源户型2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '总计2', '销售账号2', '销售姓名2', '2021-03-13 12:37:46', '备注2', '未支付'),
	(63, '2021-03-13 04:37:46', '账号3', '姓名3', '订单编号3', '房源名称3', '房源类型3', '房源户型3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '总计3', '销售账号3', '销售姓名3', '2021-03-13 12:37:46', '备注3', '未支付'),
	(64, '2021-03-13 04:37:46', '账号4', '姓名4', '订单编号4', '房源名称4', '房源类型4', '房源户型4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '总计4', '销售账号4', '销售姓名4', '2021-03-13 12:37:46', '备注4', '未支付'),
	(65, '2021-03-13 04:37:46', '账号5', '姓名5', '订单编号5', '房源名称5', '房源类型5', '房源户型5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '总计5', '销售账号5', '销售姓名5', '2021-03-13 12:37:46', '备注5', '未支付'),
	(66, '2021-03-13 04:37:46', '账号6', '姓名6', '订单编号6', '房源名称6', '房源类型6', '房源户型6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '总计6', '销售账号6', '销售姓名6', '2021-03-13 12:37:46', '备注6', '未支付'),
	(1615612151858, '2021-03-13 05:09:11', '用户1', '姓名1', '20213131374524910385', '房源名称1', '房源类型1', '房源户型1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '1', '销售账号1', '销售姓名1', '2021-03-13 13:07:55', NULL, '已支付');

DROP TABLE IF EXISTS `pingjia`;
CREATE TABLE IF NOT EXISTS `pingjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xiaoshouzhanghao` varchar(200) DEFAULT NULL COMMENT '销售账号',
  `xiaoshouxingming` varchar(200) DEFAULT NULL COMMENT '销售姓名',
  `pingfen` int DEFAULT NULL COMMENT '评分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612229312 DEFAULT CHARSET=utf8mb3 COMMENT='评价';

DELETE FROM `pingjia`;
INSERT INTO `pingjia` (`id`, `addtime`, `zhanghao`, `xingming`, `xiaoshouzhanghao`, `xiaoshouxingming`, `pingfen`) VALUES
	(81, '2021-03-13 04:37:46', '账号1', '姓名1', '销售账号1', '销售姓名1', 80),
	(82, '2021-03-13 04:37:46', '账号2', '姓名2', '销售账号2', '销售姓名2', 2),
	(83, '2021-03-13 04:37:46', '账号3', '姓名3', '销售账号3', '销售姓名3', 3),
	(84, '2021-03-13 04:37:46', '账号4', '姓名4', '销售账号4', '销售姓名4', 4),
	(85, '2021-03-13 04:37:46', '账号5', '姓名5', '销售账号5', '销售姓名5', 5),
	(86, '2021-03-13 04:37:46', '账号6', '姓名6', '销售账号6', '销售姓名6', 6),
	(1615612229311, '2021-03-13 05:10:28', '用户1', '姓名1', '销售账号1', '销售姓名1', 96);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704258663485 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1615612249261, '2021-03-13 05:10:48', 11, 32, 'fangyuanxinxi', '房源名称2', 'http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian2.jpg'),
	(1704258449770, '2024-01-03 05:07:29', 11, 31, 'fangyuanxinxi', '房源名称1', 'http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian1.jpg'),
	(1704258663484, '2024-01-03 05:11:03', 11, 33, 'fangyuanxinxi', '房源名称3', 'http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian3.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', '9kkvkogtcx25dj1ruy4zonzojfz86ffb', '2021-03-13 04:50:22', '2024-01-03 06:08:52'),
	(2, 21, '销售账号1', 'xiaoshoujingli', '销售经理', 't3lq6ln9vbu2euhlbkr5pjeknsftixcm', '2021-03-13 04:50:43', '2021-03-13 06:11:04'),
	(3, 11, '用户1', 'yonghu', '用户', 'nbxufz0k2uhmg3u4sklk9h5xy5qfp6z3', '2021-03-13 05:03:20', '2024-01-03 06:10:47'),
	(4, 22, '销售经理2', 'xiaoshoujingli', '销售经理', 'xytvfi9vxqvthd84l1weo1667n4m48mg', '2024-01-03 05:10:32', '2024-01-03 06:10:33');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-03-13 04:37:46');

DROP TABLE IF EXISTS `xiaoshoujingli`;
CREATE TABLE IF NOT EXISTS `xiaoshoujingli` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshouzhanghao` varchar(200) NOT NULL COMMENT '销售账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xiaoshouxingming` varchar(200) DEFAULT NULL COMMENT '销售姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `xiaoshoushouji` varchar(200) DEFAULT NULL COMMENT '销售手机',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoshouzhanghao` (`xiaoshouzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612439306 DEFAULT CHARSET=utf8mb3 COMMENT='销售经理';

DELETE FROM `xiaoshoujingli`;
INSERT INTO `xiaoshoujingli` (`id`, `addtime`, `xiaoshouzhanghao`, `mima`, `xiaoshouxingming`, `xingbie`, `touxiang`, `shenfenzheng`, `xiaoshoushouji`, `nianling`) VALUES
	(21, '2021-03-13 04:37:46', '销售账号1', '123456', '销售姓名1', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '440300199101010001', '13823888881', '年龄1'),
	(22, '2021-03-13 04:37:46', '销售经理2', '123456', '销售姓名2', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '440300199202020002', '13823888882', '年龄2'),
	(23, '2021-03-13 04:37:46', '销售经理3', '123456', '销售姓名3', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '440300199303030003', '13823888883', '年龄3'),
	(24, '2021-03-13 04:37:46', '销售经理4', '123456', '销售姓名4', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '440300199404040004', '13823888884', '年龄4'),
	(25, '2021-03-13 04:37:46', '销售经理5', '123456', '销售姓名5', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '440300199505050005', '13823888885', '年龄5'),
	(26, '2021-03-13 04:37:46', '销售经理6', '123456', '销售姓名6', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '440300199606060006', '13823888886', '年龄6'),
	(1615612439305, '2021-03-13 05:13:59', '11', '11', '11', '女', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', NULL, NULL, NULL);

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612416557 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `zhaopian`, `beizhu`) VALUES
	(11, '2021-03-13 04:37:46', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian1.jpg', '备注1'),
	(12, '2021-03-13 04:37:46', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian2.jpg', '备注2'),
	(13, '2021-03-13 04:37:46', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian3.jpg', '备注3'),
	(14, '2021-03-13 04:37:46', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian4.jpg', '备注4'),
	(15, '2021-03-13 04:37:46', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian5.jpg', '备注5'),
	(16, '2021-03-13 04:37:46', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian6.jpg', '备注6'),
	(1615612416556, '2021-03-13 05:13:36', '11', '11', '11', '男', NULL, NULL, 'http://localhost:8080/springbootbqv00/upload/1615612415908.jpg', NULL);

DROP TABLE IF EXISTS `yuyuekanfang`;
CREATE TABLE IF NOT EXISTS `yuyuekanfang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangyuanhuxing` varchar(200) DEFAULT NULL COMMENT '房源户型',
  `fangyuantupian` varchar(200) DEFAULT NULL COMMENT '房源图片',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `xiaoshouzhanghao` varchar(200) DEFAULT NULL COMMENT '销售账号',
  `xiaoshouxingming` varchar(200) DEFAULT NULL COMMENT '销售姓名',
  `xiaoshoushouji` varchar(200) DEFAULT NULL COMMENT '销售手机',
  `yuyuebeizhu` longtext COMMENT '预约备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704258468747 DEFAULT CHARSET=utf8mb3 COMMENT='预约看房';

DELETE FROM `yuyuekanfang`;
INSERT INTO `yuyuekanfang` (`id`, `addtime`, `zhanghao`, `xingming`, `shouji`, `fangyuanmingcheng`, `fangyuanleixing`, `fangyuanhuxing`, `fangyuantupian`, `yuyueshijian`, `xiaoshouzhanghao`, `xiaoshouxingming`, `xiaoshoushouji`, `yuyuebeizhu`, `sfsh`, `shhf`, `userid`) VALUES
	(71, '2021-03-13 04:37:46', '账号1', '姓名1', '13823888881', '房源名称1', '房源类型1', '房源户型1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '2021-03-13 12:37:46', '销售账号1', '销售姓名1', '13823888881', '预约备注1', '是', '', 1),
	(72, '2021-03-13 04:37:46', '账号2', '姓名2', '13823888882', '房源名称2', '房源类型2', '房源户型2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '2021-03-13 12:37:46', '销售账号2', '销售姓名2', '13823888882', '预约备注2', '是', '', 2),
	(73, '2021-03-13 04:37:46', '账号3', '姓名3', '13823888883', '房源名称3', '房源类型3', '房源户型3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '2021-03-13 12:37:46', '销售账号3', '销售姓名3', '13823888883', '预约备注3', '是', '', 3),
	(74, '2021-03-13 04:37:46', '账号4', '姓名4', '13823888884', '房源名称4', '房源类型4', '房源户型4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '2021-03-13 12:37:46', '销售账号4', '销售姓名4', '13823888884', '预约备注4', '是', '', 4),
	(75, '2021-03-13 04:37:46', '账号5', '姓名5', '13823888885', '房源名称5', '房源类型5', '房源户型5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '2021-03-13 12:37:46', '销售账号5', '销售姓名5', '13823888885', '预约备注5', '是', '', 5),
	(76, '2021-03-13 04:37:46', '账号6', '姓名6', '13823888886', '房源名称6', '房源类型6', '房源户型6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '2021-03-13 12:37:46', '销售账号6', '销售姓名6', '13823888886', '预约备注6', '是', '', 6),
	(1615612172187, '2021-03-13 05:09:31', '用户1', '姓名1', '13823888881', '房源名称1', '房源类型1', '房源户型1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '2021-03-15 15:00:00', '销售账号1', '销售姓名1', '13823888881', '<p>请输入预约备注11111</p><p>111</p>', '是', '1111', 11),
	(1704258468746, '2024-01-03 05:07:48', '用户1', '姓名1', '13823888881', '房源名称1', '房源类型1', '房源户型1', 'http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian1.jpg', '2024-01-03 13:07:47', '销售账号1', '销售姓名1', '13823888881', '<p>请输入预约备注测试</p>', '否', NULL, 11);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
