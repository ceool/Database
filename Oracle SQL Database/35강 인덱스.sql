-- �����ͺ��̽����� �˻��ӵ��� ������ �ϱ� ���ؼ� ���

-- ����
-- �˻��ӵ��� ��������
-- �ý����� ���ϸ� �ٿ� ���� ����Ų��

-- ����
-- �߰����� �������� �ʿ�
-- �ε��� ���� �ð��� �����ɸ���
-- insert, update, delete�� ���� ���� �۾��� ���� �Ͼ�� ������ ���� ���ϸ� ������ �� �ִ�.


drop table test_table100;
drop table emp01;

create table test_table100 (
    data1 number constraint TEST_TABLE100_PK primary key,
    data2 number not null
);


-- TEST_TABLE100_PK�� �ε����� �ڵ����� �߰��� ���� Ȯ�� ����.
select index_name, table_name, column_name
from user_ind_columns;



create table emp01
as
select * from emp;

select * from emp01;


-- ��� ����
-- 3,670,016�� �� ��(��) ���ԵǾ����ϴ�.
insert into emp01
select * from emp01;

-- count : 7340032
select count(*) from emp01;


insert into emp01 (ename)
values ('ȫ�浿');

-- ã�µ� 0.106�� �ɸ�
select * from emp01
where ename = 'ȫ�浿';

-- ename index ����
create index emp01_idx
on emp01(ename);

-- 0.016�� �ɸ�
select * from emp01
where ename = 'ȫ�浿';