/*�������ݿ�*/
CREATE DATABASE seckill;
/*ʹ�����ݿ�*/
USE seckill;

/*������ɱ���*/
CREATE TABLE tseckill(
  id BIGINT NOT NULL AUTO_INCREMENT COMMENT '��Ʒ���ID',
  name VARCHAR(120) NOT NULL COMMENT '��Ʒ����',
  num BIGINT NOT NULL COMMENT '��Ʒ���',
  start_time TIMESTAMP NOT NULL COMMENT '��ɱ��ʼʱ��',
  end_time TIMESTAMP NOT NULL COMMENT '��ɱ����ʱ��',
  create_time TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '����ʱ��',
  PRIMARY KEY (id),
  KEY idx_start_time(start_time),
  KEY idx_end_time(end_time),
  KEY idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT '��ɱ����';


/*��ʼ����ɱ����¼*/
INSERT INTO tseckill(name, num, start_time, end_time)
VALUES
('����S8',1000 ,'2017-03-30 20:00:00','2017-03-30 20:30:00'),
('HUAWEI P10',1000 ,'2017-03-30 20:00:00','2017-03-30 20:30:00'),
('iphone 7 plus',500 ,'2017-03-30 20:00:00','2017-03-30 20:30:00');


/*�����ɹ���ɱ��¼��*/
create table tsucceed_seckill (
  seckill_id bigint not null comment '��ɱid',
  mobile VARCHAR(12) not NULL  comment '��ɱ���ֻ���',
  seckill_time TIMESTAMP not null comment '��ɱʱ��',
  create_time TIMESTAMP not null DEFAULT CURRENT_TIMESTAMP comment '����ʱ��',
  PRIMARY KEY (seckill_id, mobile),
  KEY idx_create_time(create_time),
  KEY idx_seckill_time(seckill_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '�ɹ���ɱ��¼��';

/*�鿴�������sql*/
show create table tsekill/G