drop table if exists essays_info;
CREATE TABLE `essays_info`
(
    `essay_id`    int(11) NOT NULL AUTO_INCREMENT,
    `name`        varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '简述',
    `url`          varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT '链接',
    `create_time` datetime                        NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`essay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='随笔信息表';



insert into essays_info(name, url) values ('VUE文档', 'https://cn.vuejs.org/guide/introduction.html');
insert into essays_info(name, url) values ('ElemenetUI文档', 'https://element-plus.org/zh-CN/component/overview.html');
insert into essays_info(name, url) values ('GDK文档', 'http://122.51.213.95:8085/gdk/');
insert into essays_info(name, url) values ('ACE文档', 'http://122.51.213.95:8085/ace/');
