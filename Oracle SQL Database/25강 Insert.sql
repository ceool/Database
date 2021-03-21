-- ���̺� ���ο� �ο츦 �߰��ϴ� ����

-- insert into ���̺��(�÷���..)
-- values(��...)

drop table emp01;

create table emp01
as
select empno, ename, job from emp where 1=0;

select * from emp01;

-- ������ ���� ��� ������ �߰��Ѵ�.
-- 1111 ȫ�浿 �λ�
-- 2222 ��浿 ����
-- 3333 �ֱ浿 �λ�
-- 4444 �ڱ浿 ����
insert into emp01(empno, ename, job)
values(1111,'ȫ�浿', '�λ�');

insert into emp01(empno, ename, job)
values(2222,'��浿', '����');

insert into emp01(empno, ename, job)
values(3333,'�ֱ浿', '�λ�');

insert into emp01(empno, ename, job)
values(4444,'�ڱ浿', '����');

select * from emp01;



-- �÷� ����� �����ϴ� ���
insert into emp01
values(5555,'Ȳ�浿', '����');

select * from emp01;


-- �÷� ��Ͽ� ��� �÷��� ���� ���� ���
insert into emp01 (empno, ename)
values(6666, '�̱浿');

select * from emp01;


-- null�� ��������� ����
insert into emp01 (empno, ename, job)
values(6666, '�̱浿', null);

select * from emp01;


drop table emp02;

create table emp02
as
select empno, ename, job from emp where 1=0;

insert into emp02(empno, ename, job)
select empno, ename, job from emp;

select * from emp02;




drop table emp03;

create table emp03
as
select empno, ename, job from emp where 1=0;


drop table emp04;

create table emp04
as
select empno, ename, hiredate from emp where 1=0;

insert all
into emp03(empno, ename, job) values (empno, ename, job)
into emp04(empno, ename, hiredate) values (empno, ename, hiredate)
select empno, ename, job, hiredate from emp;

select * from emp03;
select * from emp04;


-- �����ȣ �̸� �޿��� ������ �� �ִ� �� ���̺��� �����
-- �޿��� 1500�̻��� ������� �����ȣ, �̸�, �޿��� �����Ѵ�
drop table emp05;
create table emp05
as
select empno, ename, sal from emp where 1=0;

insert into emp05
select empno, ename, sal
from emp
where sal >= 1500;

select * from emp05;



-- �����ȣ, �̸�, �μ����� ������ �� �ִ� �����̺��� �����
-- DALLAS ������ �ٹ��ϰ� �ִ� ������� �����ȣ, �̸� �μ����� �����Ѵ�.
drop table emp06;
create table emp06
as
select empno, ename, dname
from emp, dept
where emp.deptno = dept.deptno and 1=0;

insert into emp06
select empno, ename, dname
from emp, dept
where emp.deptno = dept.deptno and loc='DALLAS';

select * from emp06;