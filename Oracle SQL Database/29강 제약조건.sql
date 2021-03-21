-- ���̺� �����͸� ���� Ȥ�� ������ �� �ķ��� ���� ���� ������ �����ϴ� ��
-- ������ ���ǿ� ����Ǵ� ���� �÷��� ������ �� ������ �������� ���Ἲ�� ���� ����

--not null : �÷��� null�� ������� ����
--unique : �ߺ��� ���� ������� ����, �� null�� ���Ѵ�� ������ �� ����
--primary key : �ߺ��� ���� ������� ������ null ���� ������� ����. 
             -- �� �ο츦 �����ϱ� ���� ������ ���� �����ϱ� ���� ���

--�߰�������,
-- check : Į���� ����� ���� ����

drop table test_table1;
drop table test_table2;
drop table test_table3;
drop table test_table4;
drop table test_table5;
drop table test_table6;


-- NOT NULL
create table test_table1 (
data1 number,
data2 number not null
);

insert into test_table1(data1, data2)
values (100, 101);


select * from test_table1;

--ORA-01400: NULL�� ("SCOTT"."TEST_TABLE1"."DATA2") �ȿ� ������ �� �����ϴ�
insert into test_table1(data1)
values(200);

insert into test_table1(data2)
values(201);

select * from test_table1;




-- unique : �ߺ��� ���� ���, null�� ���Ѵ�� ��� (�̸� ���� !!)
create table test_table2 (
data1 number,
data2 number constraint TEST_TABLE2_DATA2_UK unique
);

insert into test_table2(data1, data2)
values (100, 101);

select * from test_table2;

--ORA-00001: ���Ἲ ���� ����(SCOTT.TEST_TABLE2_DATA2_UK)�� ����˴ϴ�
insert into test_table2(data1, data2)
values (100, 101);

insert into test_table2(data1, data2)
values (200, 201);

--ORA-00001: ���Ἲ ���� ����(SCOTT.TEST_TABLE2_DATA2_UK)�� ����˴ϴ�
insert into test_table2(data1, data2)
values (300, 201);

insert into test_table2(data1, data2)
values (200, null);

insert into test_table2(data1)
values (200);

select * from test_table2;





--primary key : �ߺ��� ���� ������� ������ null ���� ������� ����. (�̸� �ʼ�!)
create table test_table3(
    data1 number,
    data2 number constraint TEST_TABLE3_DATA2_PK primary key
);

select * from test_table3;

insert into test_table3(data1, data2)
values (100, 100);

--ORA-00001: ���Ἲ ���� ����(SCOTT.TEST_TABLE3_DATA2_PK)�� ����˴ϴ�
insert into test_table3(data1, data2)
values (200, 100);

--ORA-01400: NULL�� ("SCOTT"."TEST_TABLE3"."DATA2") �ȿ� ������ �� �����ϴ�
insert into test_table3(data1)
values (100);




-- foreign key (�ܷ�Ű) : Ư�� ���̺��� �÷��� �����ϴ� ���� ����
create table test_table4(
    data1 number constraint TEST_TABLE4_PK primary key,
    data2 number not null
);

insert into test_table4 (data1, data2)
values (100, 101);
insert into test_table4 (data1, data2)
values (200, 201);

select * from test_table4;


create table test_table5(
    data3 number not null,
    data4 number constraint TEST_TABLE5_DATA4_FK
                 references test_table4(data1)
);

insert into test_table5 (data3, data4)
values (1, 100);
insert into test_table5 (data3, data4)
values (2, 100);
insert into test_table5 (data3, data4)
values (3, 200);
insert into test_table5 (data3, data4)
values (4, 200);

select * from test_table5;

insert into test_table5 (data3, data4)
values (5, null);

insert into test_table5 (data3)
values (6);

select * from test_table5;

-- ORA-02291: ���Ἲ ��������(SCOTT.TEST_TABLE5_DATA4_FK)�� ����Ǿ����ϴ�- �θ� Ű�� �����ϴ�
insert into test_table5 (data3, data4)
values (7, 300);





-- check : Į���� ����� ���� ����
create table test_table6(
    data1 number constraint TEST_TABLE6_DATA1_CK
                check (data1 between 1 and 10),
    data2 number constraint TEST_TABLE6_DATA2_CK
                check (data2 in(10, 20, 30))
);

insert into test_table6 (data1, data2)
values(1, 10);

insert into test_table6 (data1, data2)
values(2, 20);

select * from test_table6;

--ORA-02290: üũ ��������(SCOTT.TEST_TABLE6_DATA1_CK)�� ����Ǿ����ϴ�
insert into test_table6 (data1, data2)
values(20, 10);
--ORA-02290: üũ ��������(SCOTT.TEST_TABLE6_DATA2_CK)�� ����Ǿ����ϴ�
insert into test_table6 (data1, data2)
values(5, 100);

insert into test_table6 (data1)
values(5);

select * from test_table6;