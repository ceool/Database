 -- Group by�� ���� �� �׷�� �߿� ���� ������ �׷��� ������ ������ having ���� �ۼ�
 -- Having�� group by ���� ������ ��
 
 
 -- �μ��� ��� �޿��� 2000 �̻��� �μ��� �޿� ����� �����´�.
 select deptno, round(avg(sal)) as �޿����
 from emp
 group by deptno
 having avg(sal) >= 2000
 order by deptno;
 
 -- �μ��� �ִ� �޿����� 3000 ������ �μ��� �޿� ������ �����´�.
 select deptno, sum(sal)
 from emp
 group by deptno
 having max(sal) <= 3000
 order by deptno;
 
 
 -- �μ��� �ּ� �޿����� 1000 ������ �μ����� ������ CLERK�� ������� �޿� ������ ����
 select deptno, sum(sal)
 from emp
 where job = 'CLERK'
 group by deptno
 having min(sal) <= 1000
 order by deptno asc;
 
 
 
-- �� �μ��� �޿� �ּҰ� 900 �̻� 10000 ������ �μ��� ����� �� 1500 �̻���
-- �޿��� �޴� ������� ��� �޿����� �����´�.
select deptno, avg(sal)
from emp
where sal >= 1500
group by deptno
having min(sal) >= 900 and max(sal) <= 10000
order by deptno;