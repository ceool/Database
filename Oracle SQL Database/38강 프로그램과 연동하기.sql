--JDBC
-- Java ���α׷��� �����ͺ��̽��� �����Ͽ� �����͸� ������ �� �ֵ��� �ϴ� ���
-- JDBC�� ����ϱ� ���ؼ��� JDBC ����̹��� �ʿ��ѵ�, JDBC ����̹��� �����ͺ��̽� ���ۻ簡 �����ϰ� �ִ�.
-- D:\app\������̸�\product\11.2.0\dbhome_1\jdbc\lib\ojdbc6.jar

--����
--JDBC ����̹� ���� - JDBC ����̹� �ε� - �����ͺ��̽� ���� - ������ ���� - ��� ó��

drop table test_table;


create table test_table (
    test_idx number constraint TEST_TABLE_PK primary key,
    test_number  number not null,
    test_str varchar2(100) not null
);

create sequence test_seq
start with 0
increment by 1
minvalue 0;

select * from test_table;