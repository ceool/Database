-- ������� �޿��װ� �޿��׿��� 1000�� ���� ��, 200�� �� ��, 2�� ���� ��, 2�� ���� ���� �����´�.
select sal, sal + 1000, sal - 200, sal * 2, sal / 2
from emp;

-- �� ����� �޿���, Ŀ�̼�, �޿� + Ŀ�̼� �׼��� �����´�
select sal, nvl(comm, 0), sal + nvl(comm, 0)
from emp;


-- (concat ������)������� �̸��� ������ ���� ������� �����´�. 
-- 000 ����� ��� ������ xxx �Դϴ�.
select ename, job
from emp;

select ename || '����� ��� ������ ' || job || '�Դϴ�'
from emp;


-- Distinct (�ߺ��� �ο� ����)
-- ������� �ٹ��ϰ� �ִ� �ٹ� �μ��� ��ȣ�� �����´�.
select distinct deptno
from emp;

