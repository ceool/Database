-- dual : ��� ���̺�
select 10 + 10 from dual;

-- ���밪 abs
select abs(-10) from dual;

--���� floor
select floor(12.4555) from dual;
select floor(12.8888) from dual;

--�ݿø� round
select round(12.4555) from dual;
select round(12.8888) from dual;


select 12.8888, round(12.8888), round(888.8888,2), round(888.8888,-2) from dual;

-- �޿��� 2õ ������ ������� �޿��� 20%�� �λ��Ѵ�. �� 10�� �ڸ��� �������� �ݿø��Ѵ�.
select sal, sal*1.2, round(sal*1.2, -2)
from emp
where sal <= 2000;


-- ����, �ڸ����� ���� �� �ִ�
select 1112.3456, trunc(1112.3456), trunc(1112.3456, 2), trunc(1112.3456,- 2) from dual;


-- �� ������ �޿��� 10�ڸ� ���ϸ� �谨�Ѵ�
select sal, trunc(sal, -2)
from emp;


-- ������ ���ϱ�
select mod(10,3), mod(10,4) from dual;