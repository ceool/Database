-- and
-- or
-- not ���ǽ� ��� ����
-- between and ���� ����
-- in �׸� ����

-- 10�� �μ����� �ٹ��ϰ� �ִ� ������ MANAGER�� ����� �����ȣ, �̸�, �ٹ��μ�, ������ �����´�
select empno, ename, deptno, job
from emp
where deptno = 10 and job='MANAGER';


-- �Ի�⵵�� 1981���� ����߿� �޿��� 1500 �̻��� ����� �����ȣ, �̸�, �޿� �Ի����� �����´�
select empno, ename, sal, hiredate
from emp
where hiredate >= '1981/01/01' and hiredate <= '1981/12/31' and sal >= 1500;

select empno, ename, sal, hiredate
from emp
where hiredate BETWEEN  '1981/01/01' and  '1981/12/31'and sal >= 1500;


-- 20�� �μ��� �ٹ��ϰ� �ִ� ��� �߿� �޿��� 1500 �̻��� ����� �����ȣ, �̸�, �μ���ȣ, �޿��� �����´�
select empno, ename, deptno, sal
from emp
where deptno = 20 and sal >= 1500;


-- ���� ��� ��� ��ȣ�� 7698���� ����߿� ������ CLERK�� ����� �����ȣ, �̸�, ���ӻ����ȣ�� �����´�
select empno, ename, mgr, job
from emp
where MGR = 7698 and job = 'CLERK';


-- �޿��� 2000���� ũ�ų� 1000���� ���� ����� �����ȣ, �̸� �޿��� �����´�
select empno, ename, sal
from emp
where sal > 2000 or sal < 1000;

select empno, ename, sal
from emp
where not(sal >= 1000 and sal <= 2000);

select empno, ename, sal
from emp
where not(sal between 1000 and 2000);


-- �μ���ȣ�� 20�̰ų� 30�� ����� �����ȣ, �̸�, �μ���ȣ�� �����´�
select empno, ename, deptno
from emp
where  deptno = 20 or deptno = 30;

-- ������ CLERK, SALESMAN, ANALYST�� ����� �����ȣ, �̸� ������ �����´�
select empno, ename, job
from emp
where job = 'CLERK' or job ='SALESMAN' or job='ANALYST';

select empno, ename, job
from emp
where job in ('CLERK', 'SALESMAN', 'ANALYST');


-- �����ȣ�� 7499, 7566, 7839�� �ƴ� ������� �����ȣ, �̸��� �����´�
select empno, ename
from emp
where empno <> 7499 and empno <> 7566 and empno <> 7839;

select empno, ename
from emp
where not(empno = 7499 or empno = 7566 or empno = 7839);

select empno, ename
from emp
where not(empno in (7499, 7566, 7839));
