 -- 1. �׷� �Լ��� ����� ��� select ~ from ~ where ������ ��� �����Ͽ� ������ ����� 
 --    �ϳ��� �׷����� ���� ����, ��� ���� ���� �� �ִ�.
 -- 2. �׷� �Լ��� ����ϸ� select���� �����Ͽ� ������ �ϳ��� ����� 
 --    ���� �׷����� ���� �׷� ������ ���� ��� ���� ���� �� �ִ�.
 
-- select �÷���
-- from ���̺��
-- where ������
-- group by �׷����
-- order by ���ı���



-- �� �μ��� ������� �޿� ����� ���Ѵ�
select deptno, avg(sal)
from emp
group by deptno
order by deptno desc;


-- �� ������ ������� �޿� ������ ���Ѵ�.
select job, sum(sal)
from emp
group by job
order by job asc;


-- 1500 �̻� �޿��� �޴� ������� �μ��� �޿� ����� ���Ѵ�.
select deptno, trunc(avg(sal))
from emp
where sal >= 1500
group by deptno
order by deptno;