-- Self Join
-- SMITH ����� �����ȣ, �̸�, ���ӻ�� �̸��� �����´�.
select a1.empno, a1.ename, a2.ename
from emp a1, emp a2
where a1.mgr = a2.empno and a1.ename = 'SMITH';

select * from emp;


-- FORD ��� �ؿ��� ���ϴ� ������� �����ȣ, �̸�, ������ �����´�.
select a1.empno, a1.ename, a1.job
from emp a1, emp a2
where a1.mgr = a2.empno and a2.ename='FORD';

-- SMITH ����� ���ӻ���� ������ ������ ������ �ִ� ������� �����ȣ, �̸�, ������ �����´�.
-- a1 : SMITH�� ����
-- a2 : SMITH�� ���ӻ�� ����
-- a3 : ���ӻ���� ������ ������ ������ �ִ� ����� ����
select a3.empno, a3.ename, a3.job
from emp a1, emp a2, emp a3
where a1.mgr = a2.empno and a1.ename='SMITH' and a2.JOB = a3.JOB;





-- Outer Join
-- ���� ���ǿ� �ش����� �ʱ� ������ ����� ���Ե��� �ʴ� �ο���� �������� ����

-- �� ����� �̸�, �����ȣ, ������ �̸��� �����´�. ��, ���ӻ���� ���� ����� �����´�.
-- a1 : �� ����� ����
-- a2 : �������� ����
select a1.ename, a1.empno, a2.ename
from emp a1, emp a2
where a1.mgr = a2.empno(+);


select distinct deptno from emp;
select * from dept;
-- ��� �μ��� �Ҽ� ����� �ٹ��μ���, �����ȣ, ����̸�, �޿��� �����´�.
select a2.dname, a1.empno, a1.ename, a1.sal
from emp a1, dept a2
where a1.deptno(+) = a2.deptno;

