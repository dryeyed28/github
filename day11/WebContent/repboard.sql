DROP TABLE repboard;

CREATE TABLE repboard (
BOARD_SEQ              NUMBER(10)  primary key,
PARENT_SEQ             NUMBER(10),  /** ������ ���:0, ����� ���:���۹�ȣ **/
BOARD_SUBJECT        VARCHAR2(255),
BOARD_WRITER          VARCHAR2(100),
 BOARD_CONTENTS     VARCHAR2(4000),
 BOARD_DATE            TIMESTAMP(6),
 BOARD_PASSWORD    VARCHAR2(20),
 BOARD_VIEWCOUNT    NUMBER(6)
);
--�� (1)
insert into repboard values(1, 0, '1', '1', '1', systimestamp, '1', 0);
--�� (2)
insert into repboard values(2, 0, '2', '2', '2', systimestamp, '2', 0); 
--1������ ���(3)
insert into repboard values(3, 1, '1-r1', '1-r1', '1-r1', systimestamp, '1-r1', 0); 
--2������ ���(4)
insert into repboard values(4, 2, '2-r1', '2-r1', '2-r1', systimestamp, '2-r1', 0); 
--��(5)
insert into repboard values(5, 0, '3', '3', '3', systimestamp, '3', 0); 
--����Ǵ��(6)
insert into repboard values(6, 4, '2-r1-r1', '2-r1-r1', '2-r1-r1', systimestamp, '2-r1-r1', 0); 

--���(7)
insert into repboard values(7, 2, '2-r2', '2-r2', '2-r2', systimestamp, '2-r2', 0); 
--���(8)
insert into repboard values(8, 1, '1-r2', '1-r2', '1-r2', systimestamp, '1-r2', 0); 
commit;