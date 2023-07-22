--这个文件主要用来写建库建表语句
--这里一般建议，在建表的时候把建表的 sql 保留下来 以备后续部署其他机器的时候就方便了

create database if not exists blog_system charset utf8;
use blog_system;

--删除旧表，创建新表，删除旧表是为了防止之前残留的数据对后续的程序有负面影响
drop table if exists user;
drop table if exists blog;

--真正创建表
create table blog (
    blogId int primary key auto_increment,
    title varchar(128),
    content varchar(4096),
    postTime datetime,
    userId int
);
--要求用户名不重复
create table user (
    userId int primary key auto_increment,
    username varchar(20) unique,
    password varchar(20)
);
-- 构建测试数据
insert into blog values(1, '这是我的第一篇博客', '这是博客正文', now(), 1);
insert into blog values(2, '这是我的第二篇博客', '这是博客正文', now(), 1);
insert into blog values(3, '这是我的第三篇博客', '这是博客正文', now(), 1);

-- 构建测试数据
insert into user values(1,'zhangsan',123);
insert into user values(2,'lisi',123);