/*建立数据库*/
CREATE DATABASE seckill;
/*使用数据库*/
USE seckill;

/*创建秒杀库存*/
CREATE TABLE tseckill(
  id BIGINT NOT NULL AUTO_INCREMENT COMMENT '商品库存ID',
  name VARCHAR(120) NOT NULL COMMENT '商品名称',
  num BIGINT NOT NULL COMMENT '商品库存',
  start_time TIMESTAMP NOT NULL COMMENT '秒杀开始时间',
  end_time TIMESTAMP NOT NULL COMMENT '秒杀结束时间',
  create_time TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '创建时间',
  PRIMARY KEY (id),
  KEY idx_start_time(start_time),
  KEY idx_end_time(end_time),
  KEY idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT '秒杀库存表';


/*初始化秒杀库存记录*/
INSERT INTO tseckill(name, num, start_time, end_time)
VALUES
('三星S8',1000 ,'2017-03-30 20:00:00','2017-03-30 20:30:00'),
('HUAWEI P10',1000 ,'2017-03-30 20:00:00','2017-03-30 20:30:00'),
('iphone 7 plus',500 ,'2017-03-30 20:00:00','2017-03-30 20:30:00');


/*创建成功秒杀记录表*/
create table tsucceed_seckill (
  seckill_id bigint not null comment '秒杀id',
  mobile VARCHAR(12) not NULL  comment '秒杀人手机号',
  seckill_time TIMESTAMP not null comment '秒杀时间',
  create_time TIMESTAMP not null DEFAULT CURRENT_TIMESTAMP comment '创建时间',
  PRIMARY KEY (seckill_id, mobile),
  KEY idx_create_time(create_time),
  KEY idx_seckill_time(seckill_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '成功秒杀记录表';

/*查看创建表的sql*/
show create table tsekill/G