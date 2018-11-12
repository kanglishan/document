/***类目表*/
CREATE TABLE `tb_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '类目id',
  `name` varchar(20) NOT NULL COMMENT '类目名称',
  `image` varchar(50) NOT NULL DEFAULT '' COMMENT '图片url，第一类目才有',
  `ordered` int(11) unsigned NOT NULL COMMENT '类目内的排序',
  `parent_category_id` int(11) unsigned DEFAULT '0' COMMENT '父类目id',
  `is_online` int(2) unsigned DEFAULT '1' COMMENT '是否上架',
  `level` int(10) unsigned DEFAULT NULL COMMENT '类目级别1=第一级别 2=第二级别',
  `is_delete` int(2) unsigned DEFAULT '1' COMMENT '1=有效  0=未删除',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
   `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='类目表';