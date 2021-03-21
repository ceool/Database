-- ������̺�(emp)�� �μ����̺�(dept)�� join �Ѵ�.
select * from emp;
select * from dept;
select * from emp, dept;

select * from emp, dept where emp.deptno = dept.deptno;
select * from emp a1, dept a2 where a1.deptno = a2.deptno;


-- ����� �����ȣ, �̸�, �ٹ��μ� �̸��� �����´�.
select a1.empno, a1.ename, a2.dname
from emp a1, dept a2
where a1.deptno = a2.deptno;


-- ����� �����ȣ, �̸�, �ٹ� ������ �����´�.
select a1.empno, a1.ename, a2.loc
from emp a1, dept a2
where a1.deptno = a2.deptno;


-- DALLAS�� �ٹ��ϰ� �ִ� ������� �����ȣ, �̸�, ������ �����´�
select a1.empno, a1.ename, a1.job, a2.LOC
from emp a1, dept a2
where a1.deptno = a2.deptno and a2.LOC='DALLAS';


-- SALES �μ��� �ٹ��ϰ� �ִ� ������� �޿� ����� �����´�
select avg(a1.sal)
from emp a1, dept a2
where a1.deptno = a2.deptno and a2.DNAME='SALES';



-- 1982�⿡ �Ի��� ������� �����ȣ, �̸�, �Ի���, �ٹ��μ� �̸��� �����´�.
select a1.empno, a1.ename, a1.hiredate, a2.dname
from emp a1, dept a2
where a1.hiredate between '1982/01/01' and '1982/12/31' and a1.deptno = a2.deptno;

-- �� ������� �����ȣ, �̸�, �޿�, �޿������ �����´�.
select a1.empno, a1.ename, a1.sal, a2.grade
from emp a1, salgrade a2
where a1.sal >= a2.losal and a1.sal <= a2.hisal;

-- SALES �μ��� �ٹ��ϰ� �ִ� ����� �����ȣ, �̸�, �޿������ �����´�.
select a1.empno, a1.ename, a2.grade
from emp a1, salgrade a2, dept a3
where a1.sal between a2.losal and a2.hisal and a3.deptno = a1.deptno and a3.dname = 'SALES';


-- �� �޿� ��޺� �޿��� ���հ� ���, ����� ��, �ִ� �޿�, �ּұ޿��� �����´�.
select a2.grade, sum(a1.sal), trunc(avg(a1.sal)), count(a1.sal), max(a1.sal), min(a1.sal)
from emp a1, salgrade a2
where  a1.sal between a2.losal and a2.hisal
group by a2.grade
order by a2.grade asc;


-- �޿� ����� 4����� ������� �����ȣ, �̸�, �޿�, �ٹ��μ��̸�, �ٹ������� �����´�.
select a1.empno, a1.ename, a1.sal, a3.dname, a3.loc, a2.grade
from emp a1, salgrade a2, dept a3
where  a1.sal between a2.losal and a2.hisal and a1.deptno = a3.deptno and a2.grade = 4;
