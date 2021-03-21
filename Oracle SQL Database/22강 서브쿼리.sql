-- SCOTT ����� �ٹ��ϰ� �ִ� �μ��� �̸��� �����´�
select a2.dname
from emp a1, dept a2
where a2.deptno = a1.deptno and a1.ename = 'SCOTT';

select dname
from dept
where deptno = (select deptno
                from emp
                where ename = 'SCOTT');
                
                
-- SMITH�� ���� �μ��� �ٹ��ϰ� �ִ� ������� �����ȣ, �̸�, �޿���, �μ��̸��� �����´�
select a1.empno, a1.ename, a1.sal, a2.dname
from emp a1, dept a2
where a2.deptno = a1.deptno and a1.deptno = (select deptno
                                                from emp
                                                where ename = 'SMITH');


-- SMITH�� ���� ������ ������ �ִ� ������� �����ȣ, �̸�, ������ �����´�.
select empno, ename, job
from emp
where job = (select job
            from emp
            where ename = 'SMITH');


-- ALLEN�� ���� ���ӻ���� ���� ������� �����ȣ, �̸�, ���ӻ���̸��� �����´�.
select a1.empno, a1.ename, a2.ename
from emp a1, emp a2
where a1.mgr = a2.empno and a1.mgr = (select mgr
                                        from emp
                                        where ename = 'ALLEN');



-- WARD�� ���� �μ��� �ٹ��ϰ� �ִ� ������� �����ȣ, �̸�, �μ���ȣ�� �����´�.
select empno, ename, deptno
from emp
where deptno = (select deptno
                from emp
                where ename = 'WARD');


-- SALESMAN�� ��� �޿����� ���� �޴� ������� �����ȣ, �̸�, �޿��� �����´�
select empno, ename, sal
from emp
where sal >= (select avg(sal)
                from emp
                group by JOB
                having job = 'SALESMAN');


-- DALLAS ������ �ٹ��ϴ� ������� ��� �޿��� �����´�
select avg(a1.sal)
from emp a1, dept a2
where a1.deptno = a2.deptno and a2.LOC='DALLAS';

select avg(sal)
from emp
where deptno = (select deptno
                from dept
                where loc='DALLAS');
                
                
-- SALES �μ��� �ٹ��ϴ� ������� �����ȣ, �̸�, �ٹ������� �����´�
select a1.empno, a1.ename, a2.loc
from emp a1, dept a2
where a1.deptno = a2.deptno and a2.dname = 'SALES';


-- CHICAGO ������ �ٹ��ϴ� ����� �� BLAKE�� ���� ����� ������� �����ȣ, �̸�, ������ �����´�
select empno, ename, job
from emp
where deptno = (select deptno
                from dept
                where LOC = 'CHICAGO') and mgr = (select empno
                                                    from emp
                                                    where ename = 'BLAKE');
                                                    