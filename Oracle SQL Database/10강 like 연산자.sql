-- select �÷��� from ���̺�� where �÷��� like ���ϵ�ī��
-- _: ���� �ϳ� �ǹ�
-- %: ���� 0�� �̻��� �ǹ�

-- �̸��� F�� �����ϴ� ����� �̸��� ��� ��ȣ�� �����´�
select ename, empno
from emp
where ename like 'F%';

-- �̸��� S�� ������ ����� �̸��� ��� ��ȣ�� �����´�
select ename, empno
from emp
where ename like '%S';


-- �̸��� A�� ���ԵǾ� �ִ� ����� �̸��� ��� ��ȣ�� �����´�
select ename, empno
from emp
where ename like '%A%';

-- �̸� �ι�° ���ڰ� A�� ����� ��� �̸�, ��� ��ȣ�� �����´�
select ename, empno
from emp
where ename like '_A%';

-- �̸��� 4������ ����� ��� �̸�, ��� ��ȣ�� �����´�
select ename, empno
from emp
where ename like '____';

