-- = <> ���� �÷� ���� null���� ���� �ȵ�
-- is null, is not null�� ���� null ��


-- ����߿� Ŀ�̼��� ���� �ʴ� ����� �����ȣ, �̸�, Ŀ�̼��� �����´�
select * from emp;

select empno, ename, comm
from emp
where COMM is null;

select empno, ename, nvl(comm, 0)
from emp
where COMM is null;


-- ����߿� Ŀ�̼��� �޴� ����� �����ȣ, �̸�, Ŀ�̼��� �����´�
select empno, ename, comm
from emp
where COMM is not null;

-- ȸ�� ��ǥ(���ӻ���� ���� ���)�� �̸��� �����ȣ�� �����´�
select ename, empno
from emp
where mgr is null;


-- ȸ�� ��ǥ(���ӻ���� �ִ� ���) �ƴ� ����� �̸��� �����ȣ�� �����´�
select ename, empno
from emp
where mgr is not null;
