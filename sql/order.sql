
/**订单表*/
CREATE TABLE `tb_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) NOT NULL DEFAULT '' COMMENT '订单id',
  `account` bigint(11) NOT NULL COMMENT '用户账户',
  `mob` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  `status` int(11) unsigned NOT NULL COMMENT '订单状态',
  `delivery_date` varchar(10) DEFAULT '' COMMENT '送货日期',
  `delivery_time` varchar(20) DEFAULT NULL COMMENT '送货时间',
  `pay_mod` int(11) unsigned DEFAULT NULL COMMENT '支付方式，月付， 实付',
  `pay_channel` int(11) unsigned DEFAULT NULL COMMENT '支付渠道，比如微信',
  `pay_serial_number` varchar(20) DEFAULT NULL COMMENT '支付流水号',
  `address` varchar(50) DEFAULT NULL COMMENT '送货地址',
  `arrived_time` timestamp NULL DEFAULT NULL COMMENT '送达时间',
  `totol_fee` double(9,2) DEFAULT NULL COMMENT '预付总费用',
  `actual_fee` double(9,2) DEFAULT NULL COMMENT '实际总费用',
  `balance_fee` float(6,2) DEFAULT NULL COMMENT '上次的费用',
  `preferential_amount` double(9,2) DEFAULT NULL COMMENT '优惠金额',
  `deliveryer_id` int(11) unsigned DEFAULT NULL COMMENT '送货员id',
  `salesman_id` int(11) unsigned DEFAULT NULL COMMENT '业务员id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_Id` (`order_id`),
  KEY `acc` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

/**订单详情表*/
CREATE TABLE `tb_order_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_Id` varchar(20) DEFAULT NULL COMMENT '订单id',
  `goods_id` varchar(20) DEFAULT NULL COMMENT '商品id',
  `status` int(11) DEFAULT NULL COMMENT '商品状态',
  `goods_name` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `goods_price` float(6,2) DEFAULT NULL COMMENT '商品价格',
  `goods_spec` varchar(20) DEFAULT NULL COMMENT '商品规格',
  `actual_num` float(6,2) DEFAULT NULL COMMENT '实际的数量',
  `actual_fee` float(6,2) DEFAULT NULL COMMENT '实际的费用',
  `goods_fee` float(6,2) DEFAULT NULL COMMENT '商品的费用',
  `goods_num` float(6,2) DEFAULT NULL COMMENT '商品的数量',
  `unit` varchar(20) DEFAULT NULL COMMENT '商品单位',
  `point_rate` int(3) DEFAULT NULL COMMENT '积分比例',
  `is_weight` int(3) DEFAULT NULL COMMENT '是否需要称重',
  `activity_ids` varchar(30) DEFAULT NULL COMMENT '参加的活动',
  `weight_personnel` int(11) DEFAULT NULL COMMENT '称重人员',
  `weight_time` timestamp NULL DEFAULT NULL COMMENT '称重时间',
  `outgo_personnel` int(11) DEFAULT NULL COMMENT '出库人员',
  `outergo_time` timestamp NULL DEFAULT NULL COMMENT '出库时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情表';


