-- ���� ������ ������ �� �� �÷����� ������ �� ������ �ϴܺκп� ���Ƽ� ��������
-- �÷� �� �տ� ����ϴ� ���� �÷� ����, �ϴܿ� ���Ƽ� ����ϴ� ���� ���̺� ���� ���������̶�� �θ�


drop table test_table10;
drop table test_table11;
drop table test_table12;


-- �÷� ���� ��������
create table test_table10 (
    data1 number constraint TEST_TABLE10_DATA1_PK primary key,
    data2 number not null constraint TEST_TABLE10_DATA2_UK UNIQUE,
    data3 number not null constraint TEST_TABLE10_DATA3_FK
                          REFERENCES emp(empno), 
    data4 number not null constraint TEST_TABLE10_DATA4_CK
                          CHECK(data4 between 1 and 10),
    data5 number not null constraint TEST_TABLE10_DATA5_CK
                          CHECK(data5 in (10, 20, 30))
);
                          

-- ���̺� ���� ��������
create table test_table11 (
    data1 number,
    data2 number not null,
    data3 number not null,
    data4 number not null,
    data5 number not null,
    
    constraint TEST_TABLE11_DATA1_PK primary key(data1),
    constraint TEST_TABLE11_DATA2_UK UNIQUE(data2),
    constraint TEST_TABLE11_DATA3_FK foreign key(data3)
                                     REFERENCES emp(empno),
    constraint TEST_TABLE11_DATA4_CK CHECK(data4 between 1 and 10),
    constraint TEST_TABLE11_DATA5_CK CHECK(data5 in (10, 20, 30))
);


--����Ű
 -- ���̺� ���� ���������� ������ �� �ϳ� �̻��� �÷��� �ϳ��� primary key�� ��� ��� ����
 -- ����Ű�� ��� �� �÷��� �ߺ��� �����Ͱ� ����� ������ �� �ο��� ��� ����Ű �÷��� �ߺ��Ǵ� ���� ������� �ʴ´�
 
create table test_table12(
    data1 number,
    data2 number,
    constraint TEST_TABLE12_COMBO_PK primary key(data1, data2)
 );
 
insert into test_table12(data1, data2)
values(100, 200);
 
insert into test_table12(data1, data2)
values(100, 300);
 
insert into test_table12(data1, data2)
values(400, 200);
 
select * from test_table12;
 
-- ORA-00001: ���Ἲ ���� ����(SCOTT.TEST_TABLE12_COMBO_PK)�� ����˴ϴ�
insert into test_table12(data1, data2)
values(100, 200);

--ORA-01400: NULL�� ("SCOTT"."TEST_TABLE12"."DATA2") �ȿ� ������ �� �����ϴ�
insert into test_table12(data1, data2)
values(100, null);