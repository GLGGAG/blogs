
drop table if exists category;

drop table if exists star;

drop table if exists article;

drop table if exists visitor ;

drop table if exists admin ;

drop table if exists adminLog ;

drop table if exists keyword ;

/*==============================================================*/
/* Table:文章分别类目表                                           */
/*==============================================================*/
create table category
(
  id                   int not null AUTO_INCREMENT comment '主键',
  categoryName         varchar(20) NOT NULL comment '类目名称',
  categoryNo           INT NOT NULL comment '类目编号',
  priority             INT NOT NULL DEFAULT 0 COMMENT '类目优先级',
  categoryParentNo     INT NOT NULL DEFAULT 0 comment '类目父级编号',
  createTime           datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP comment '创建时间',
  updateTime           datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP  comment '修改时间',
  version              int DEFAULT 0 comment '版本号',
  deleted              bit DEFAULT FALSE comment '是否删除',
  primary key (id)
);
/*==============================================================*/
/* Table:文章内容表                                           */
/*==============================================================*/
create table article
(
  id                   int not null AUTO_INCREMENT comment '主键',
  articleNo            INT NOT NULL COMMENT '文章编号',
  title                varchar(100)NOT NULL comment '文章标题',
  categoryNo           INT NOT NULL comment '文章所属类目编号',
  tags                 VARCHAR(20) COMMENT '文章标签名称(来自文章父级类目名称)',
  titleImage           VARCHAR(100) COMMENT '标题图片',
  content              TEXT COMMENT '文章内容',
  createTime           datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP comment '创建时间',
  updateTime           datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP  comment '修改时间',
  version              int DEFAULT 0 comment '版本号',
  deleted              bit DEFAULT FALSE comment '是否删除',
  primary key (id)
);
/*==============================================================*/
/* Table:文章star表                                           */
/*==============================================================*/
create table star
(
  id                   int not null AUTO_INCREMENT comment '主键',
  articleNo            INT NOT NULL COMMENT '文章编号',
  number               int COMMENT '点赞次数',
  createTime           datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP comment '创建时间',
  updateTime           datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP  comment '修改时间',
  version              int DEFAULT 0 comment '版本号',
  deleted              bit DEFAULT FALSE comment '是否删除',
  primary key (id)
);
/*==============================================================*/
/* Table:访客记录表                                           */
/*==============================================================*/
create table visitor
(
  id                    int not null AUTO_INCREMENT comment '主键',
  ip                    VARCHAR(50)  COMMENT '访客ip',
  device                VARCHAR(20) comment '访客设备',
  behavior              VARCHAR(20) comment '访客浏览行为（点击主页或者点击其他页面）',
  articleNo             INT  COMMENT '访客点击文章编号(如果访客点击文章，则记录文章编号)',
  createTime            datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP comment '创建时间',
  updateTime            datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP  comment '修改时间',
  version               int DEFAULT 0 comment '版本号',
  deleted               bit DEFAULT FALSE comment '是否删除',
  primary key (id)
);
/*==============================================================*/
/* Table:管理员登陆日记记录表                                          */
/*==============================================================*/
create table adminLog
(
  id                     int not null AUTO_INCREMENT comment '主键',
  ip                     VARCHAR(50)  COMMENT '管理员登陆ip',
  device                 VARCHAR(20) comment '管理员设备',
  createTime             datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP comment '创建时间',
  updateTime             datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP  comment '修改时间',
  version                int DEFAULT 0 comment '版本号',
  deleted                bit DEFAULT FALSE comment '是否删除',
  primary key (id)
);
/*==============================================================*/
/* Table:管理员表                                          */
/*==============================================================*/
create table admin
(
  id                     int not null AUTO_INCREMENT comment '主键',
  name                   VARCHAR(20) NOT NULL  COMMENT '管理员姓名',
  nickName               VARCHAR(20) comment '管理员别名',
  mobile                 VARCHAR(15)NOT NULL COMMENT '手机号码',
  passWord               VARCHAR(50)NOT NULL COMMENT '密码',
  loginNum               INT COMMENT '登陆次数',
  avator                 VARCHAR(50) COMMENT  '头像',
  introduction           VARCHAR(100) COMMENT '自我介绍',
  motto                  VARCHAR(50) COMMENT '座右铭',
  createTime             datetime NOT NULL DEFAULT CURRENT_TIMESTAMP comment '创建时间',
  updateTime             datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP comment '修改时间',
  version                int DEFAULT 0 comment '版本号',
  deleted                bit DEFAULT FALSE comment '是否删除',
  primary key (id)
);

/*==============================================================*/
/* Table:文章关键字表                                          */
/*==============================================================*/
create table keyword
(
  id                    int not null AUTO_INCREMENT comment '主键',
  keyword               VARCHAR(20)  COMMENT '关键字',
  articleNo             INT NOT NULL COMMENT '文章编号',
  createTime            datetime NOT NULL DEFAULT CURRENT_TIMESTAMP comment '创建时间',
  updateTime            datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP  comment '修改时间',
  version               int DEFAULT 0 comment '版本号',
  deleted               bit DEFAULT FALSE comment '是否删除',
  primary key (id)
);










