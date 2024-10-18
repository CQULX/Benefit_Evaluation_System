/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 8.0.26 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

insert into `table` (`module_id`, `name`, `create_time`, `update_time`, `entity_related`, `is_total`, `time_related`) values('6','项目基本概况及评估结果','2024-08-24 15:54:45','2024-08-24 15:54:48','1','0','1');


insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'项目责任单位',NULL,'2024-08-26 16:15:26','2024-08-26 16:15:28',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'项目责任人及联系方式',NULL,'2024-08-26 16:15:44','2024-08-26 16:15:46',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'项目建设期间',NULL,'2024-08-26 16:15:57','2024-08-26 16:15:58',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'项目建设期长（年）',NULL,'2024-08-26 16:16:07','2024-08-26 16:16:10',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'评估期间',NULL,'2024-08-26 16:16:22','2024-08-26 16:16:23',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'评估期长（年）',NULL,'2024-08-26 16:16:33','2024-08-26 16:16:35',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'总投入',NULL,'2024-08-26 16:16:44','2024-08-26 16:16:45',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'其中：本次立项支出',NULL,'2024-08-26 16:16:56','2024-08-26 16:16:57',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'其他支出',NULL,'2024-08-26 16:17:08','2024-08-26 16:17:09',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'其他支出说明',NULL,'2024-08-26 16:17:17','2024-08-26 16:17:18',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'总产出',NULL,'2024-08-26 16:17:28','2024-08-26 16:17:29',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'其中：直接收入',NULL,'2024-08-26 16:17:38','2024-08-26 16:17:39',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'间接收入',NULL,'2024-08-26 16:17:48','2024-08-26 16:17:50',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'间接收入说明',NULL,'2024-08-26 16:17:58','2024-08-26 16:17:59',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'总利润',NULL,'2024-08-26 16:18:13','2024-08-26 16:18:14',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'净利润',NULL,'2024-08-26 16:18:24','2024-08-26 16:18:26',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'年度平均利润率',NULL,'2024-08-26 16:18:35','2024-08-26 16:18:37',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'投资回报率',NULL,'2024-08-26 16:18:45','2024-08-26 16:18:46',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'投资回收期（年）',NULL,'2024-08-26 16:18:56','2024-08-26 16:18:58',NULL,'0');
insert into `entity` (`entity_code`, `name`, `specification`, `create_time`, `update_time`, `project_subcategory_id`, `is_product`) values(NULL,'累计净现值',NULL,'2024-08-26 16:23:04','2024-08-26 16:23:06',NULL,'0');

insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('15','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('16','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('17','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('18','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('19','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('20','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('21','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('22','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('23','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('24','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('25','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('26','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('27','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('28','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('29','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('30','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('31','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('32','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('33','22','0',NULL);
insert into `table_attribute` (`attribute_id`, `table_id`, `entity_related`, `project_related`) values('34','22','0',NULL);

/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 8.0.26 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','15','项目责任单位','2024-08-24 17:30:44','2024-08-24 17:30:46');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','16','项目负责人','2024-08-24 17:31:17','2024-08-24 17:31:20');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','17','2024年1月-2026年12月','2024-08-24 17:32:09','2024-08-24 17:32:11');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','18','3','2024-08-24 17:32:29','2024-08-24 17:32:31');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','19','2024年5月-2031年4月','2024-08-24 17:33:01','2024-08-24 17:33:03');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','20','7','2024-08-24 17:33:16','2024-08-24 17:33:18');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','21','4270.99','2024-08-24 17:33:57','2024-08-24 17:33:59');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','22','803.80','2024-08-24 17:34:15','2024-08-24 17:34:17');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','23','0','2024-08-24 17:34:39','2024-08-24 17:34:41');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','24','8386.27','2024-08-24 17:35:05','2024-08-24 17:35:07');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','25','8386.27','2024-08-24 17:35:23','2024-08-24 17:35:25');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','26','0','2024-08-24 17:35:38','2024-08-24 17:35:39');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','27','0','2024-08-24 17:36:02','2024-08-24 17:36:01');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','28','4115.28','2024-08-24 17:36:19','2024-08-24 17:36:21');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','29','3086.46','2024-08-24 17:36:36','2024-08-24 17:36:38');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','30','0.37','2024-08-24 17:36:51','2024-08-24 17:36:53');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','31','3.84','2024-08-24 17:37:11','2024-08-24 17:37:12');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','32','1.00','2024-08-24 17:37:49','2024-08-24 17:37:53');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','33','33','2024-08-24 17:38:16','2024-08-24 17:38:18');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','34','34','2024-08-24 17:39:02','2024-08-24 17:39:04');

/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 8.0.26 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('项目责任单位','varchar','2024-08-24 16:22:11','2024-08-24 16:22:15');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('项目责任人及联系方式','varchar','2024-08-24 16:22:32','2024-08-24 16:22:34');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('项目建设期间','varchar','2024-08-24 16:22:57','2024-08-24 16:23:00');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('项目建设期长（年）','varchar','2024-08-24 16:23:16','2024-08-24 16:23:19');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('评估期间','varchar','2024-08-24 16:23:59','2024-08-24 16:24:01');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('评估期长（年）','varchar','2024-08-24 16:24:36','2024-08-24 16:24:38');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('总投入','varchar','2024-08-24 16:24:54','2024-08-24 16:24:56');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('其中：本次立项支出','varchar','2024-08-24 16:25:14','2024-08-24 16:25:16');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('其他支出','varchar','2024-08-24 16:25:34','2024-08-24 16:25:36');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('其他支出说明','varchar','2024-08-24 16:25:53','2024-08-24 16:25:54');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('总产出','varchar','2024-08-24 16:26:10','2024-08-24 16:26:13');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('其中：直接收入','varchar','2024-08-24 16:26:27','2024-08-24 16:26:29');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('间接收入','varchar','2024-08-24 16:26:50','2024-08-24 16:26:51');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('间接收入说明','varchar','2024-08-24 16:27:08','2024-08-24 16:27:11');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('总利润','varchar','2024-08-24 16:27:26','2024-08-24 16:27:28');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('净利润','varchar','2024-08-24 16:27:46','2024-08-24 16:27:48');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('年度平均利润率','varchar','2024-08-24 16:28:14','2024-08-24 16:28:16');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('投资回报率','varchar','2024-08-24 16:28:30','2024-08-24 16:28:31');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('投资回收期（年）','varchar','2024-08-24 16:28:47','2024-08-24 16:28:49');
insert into `attribute` (`name`, `type`, `create_time`, `update_time`) values('累计净现值','varchar','2024-08-24 16:29:05','2024-08-24 16:29:07');

/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 8.0.26 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','34','34','2024-08-24 17:39:02','2024-08-24 17:39:04');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','34','34','2024-08-24 17:39:02','2024-08-24 17:39:04');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','33','33','2024-08-24 17:38:16','2024-08-24 17:38:18');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','33','33','2024-08-24 17:38:16','2024-08-24 17:38:18');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','32','1.00','2024-08-24 17:37:49','2024-08-24 17:37:53');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','32','1.00','2024-08-24 17:37:49','2024-08-24 17:37:53');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','31','3.84','2024-08-24 17:37:11','2024-08-24 17:37:12');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','31','3.84','2024-08-24 17:37:11','2024-08-24 17:37:12');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','30','0.37','2024-08-24 17:36:51','2024-08-24 17:36:53');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','30','0.37','2024-08-24 17:36:51','2024-08-24 17:36:53');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','29','3086.46','2024-08-24 17:36:36','2024-08-24 17:36:38');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','29','3086.46','2024-08-24 17:36:36','2024-08-24 17:36:38');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','28','4115.28','2024-08-24 17:36:19','2024-08-24 17:36:21');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','28','4115.28','2024-08-24 17:36:19','2024-08-24 17:36:21');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','27','0','2024-08-24 17:36:02','2024-08-24 17:36:01');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','27','0','2024-08-24 17:36:02','2024-08-24 17:36:01');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','26','0','2024-08-24 17:35:38','2024-08-24 17:35:39');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','26','0','2024-08-24 17:35:38','2024-08-24 17:35:39');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','25','8386.27','2024-08-24 17:35:23','2024-08-24 17:35:25');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','25','8386.27','2024-08-24 17:35:23','2024-08-24 17:35:25');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','24','8386.27','2024-08-24 17:35:05','2024-08-24 17:35:07');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','24','8386.27','2024-08-24 17:35:05','2024-08-24 17:35:07');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','23','0','2024-08-24 17:34:39','2024-08-24 17:34:41');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','23','0','2024-08-24 17:34:39','2024-08-24 17:34:41');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','22','803.80','2024-08-24 17:34:15','2024-08-24 17:34:17');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','22','803.80','2024-08-24 17:34:15','2024-08-24 17:34:17');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','21','4270.99','2024-08-24 17:33:57','2024-08-24 17:33:59');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','21','4270.99','2024-08-24 17:33:57','2024-08-24 17:33:59');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','20','7','2024-08-24 17:33:16','2024-08-24 17:33:18');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','20','7','2024-08-24 17:33:16','2024-08-24 17:33:18');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','19','2024年5月-2031年4月','2024-08-24 17:33:01','2024-08-24 17:33:03');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','19','2024年5月-2031年4月','2024-08-24 17:33:01','2024-08-24 17:33:03');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','18','3','2024-08-24 17:32:29','2024-08-24 17:32:31');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','18','3','2024-08-24 17:32:29','2024-08-24 17:32:31');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','17','2024年1月-2026年12月','2024-08-24 17:32:09','2024-08-24 17:32:11');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','17','2024年1月-2026年12月','2024-08-24 17:32:09','2024-08-24 17:32:11');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','16','张三','2024-08-24 17:31:17','2024-08-24 17:31:20');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','16','张三','2024-08-24 17:31:17','2024-08-24 17:31:20');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'23','15','市公司A','2024-08-24 17:30:44','2024-08-24 17:30:46');
insert into `value_varchar` (`project_info_id`, `project_entity_id`, `table_id`, `attribute_id`, `value`, `create_time`, `update_time`) values('6',NULL,'22','15','市公司A','2024-08-24 17:30:44','2024-08-24 17:30:46');
