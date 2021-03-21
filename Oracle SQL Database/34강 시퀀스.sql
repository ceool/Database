-- ���̺� ���� �÷��� primary key �����ϱ� �ָ��� ��� 1���� 1�� �����Ǵ� ���� �����ϴ� �÷��� �߰��Ͽ� ����ϴ� ��찡 ����.
-- �̶�, 1���� 1�� �����Ǵ� ���� ���ϱ� ���� �������� ���

-- start with ���� : ���� ��, ���� �ּҰ����� ���� �� ����
-- increment by : ���� ��
-- max value : �������� ���� �� �ִ� �ִ� ��, �����ϰų� nomaxvalue �� ���, 10^27
-- min value : �������� ���� �� �ִ� �ּ� ��, �����ϰų� nominvalue�� ��� 1
-- cycle : �ִ� Ȥ�� �ּҰ����� ����� ��ȯ�Ѵ�.
-- cache : �������� �޸𸮻󿡼� ������ �� �ֵ��� �����Ѵ�.

drop table test_table1;

create table test_table1 (
    idx number constraint TEST_TABLE1_IDX_PK primary key,
    number_data number not null
);

-- ORA-04006: START WITH �� MINVALUE ���� ���� ���� ������ �� �����ϴ�
-- �⺻ �ּҰ��� 1�̶� ���� ��
create sequence test_seq1
start with 0
increment by 1;


create sequence test_seq1
start with 0
increment by 1
minvalue 0;

-- ORA-08002: ������ TEST_SEQ1.CURRVAL�� �� ���ǿ����� ���� �Ǿ� ���� �ʽ��ϴ�
select test_seq1.currval from dual;


insert into test_table1(idx, number_data)
values(test_seq1.nextval, 100);

insert into test_table1(idx, number_data)
values(test_seq1.nextval, 200);

select * from test_table1;

-- ���� �� 2
select test_seq1.currval from dual;

-- ������ ����
drop sequence test_seq1;