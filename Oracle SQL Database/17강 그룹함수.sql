-- select ���� ���� ������ ����� �׷����� ����,
-- �׷� ������ ������ �÷��� ����, ��� ���� ���� �� �ִ� �Լ�

-- ������� �޿� ������ ���Ѵ�.
select sum(sal)
from emp;


-- ������� Ŀ�̼��� �����´�. (null �ڵ� ����)
select sum(comm)
from emp;


-- �޿��� 1500 �̻��� ������� �޿� ������ ���Ѵ�.
select sum(sal)
from emp
where sal >= 1500;

-- 20�� �μ��� �ٹ��ϰ� �ִ� ������� �޿� ������ ���Ѵ�.
select sum(sal)
from emp
where deptno = 20;


-- ������ SALESMAN�� ������� �޿� ������ ���Ѵ�.
select sum(sal)
from emp
where job = 'SALESMAN';

-- �� ����� �޿� ����� ���Ѵ�
select trunc(avg(sal))
from emp;


-- Ŀ�̼��� �޴� ������� Ŀ�̼� ����� ���Ѵ� (null�� �ڵ� ����)
select avg(comm)
from emp
where comm != 0;
-- where comm != 0 and comm is not null;



-- �� ����� Ŀ�̼��� ����� ���Ѵ�
select avg(nvl(comm, 0))
from emp;


-- Ŀ�̼� �޴� ������� �޿� ����� ���Ѵ�
select avg(sal)
from emp
where comm is not null and comm != 0;


-- 30�� �μ��� �ٹ��ϰ� �ִ� ������� �޿� ����� ���Ѵ�
select round(avg(sal))
from emp
where deptno = 30;

-- ������ MANAGER�� ������� �޿� + Ŀ�̼� ����� ���Ѵ�
select avg(sal + nvl(comm, 0))
from emp
where job = 'MANAGER';


-- ������� �� ���� �����´�
select count(empno)
from emp;
select count(*) from emp;

-- Ŀ�̼� �޴� ��� �� ��
select count(comm)
from emp
where comm != 0;

-- ������� �޿� �ִ�, �ּҰ��� �����´�.
select max(sal), min(sal)
from emp;