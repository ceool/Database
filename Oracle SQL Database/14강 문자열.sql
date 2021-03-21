-- �빮�� -> �ҹ���
select 'ABcdEF', lower('ABcdEF') from dual;


-- ������� �̸��� �ҹ���
select ename, lower(ename) 
from emp;


-- �ҹ��� -> �빮��
select 'ABcdEF', upper('ABcdEF') from dual;


-- ������� �̸��� �����´�. �빮�� -> �ҹ��� -> �빮��
select ename, lower(ename), upper(lower(ename))
from emp;


-- ù���ڸ� �빮�ڷ�, �������� �ҹ��ڷ�
select 'abCDEF', initcap('aBCDEF') from dual;


-- ��� �̸��� ù����, �������� �ҹ��ڷ� �����´�
select ename, initcap(ename) from emp;


-- ���ڿ� ����
select concat('abc', 'def') from dual;
select concat(concat('abc', 'def'), 'zzz') from dual;


-- ������� �̸��� ������ ������ ���� �����´�.
-- ����� �̸��� ooo�̰�, ������ ooo�Դϴ�.
select '����� �̸��� ' || ename || '�̰�, ������' || job || '�Դϴ�.'
from emp;

select concat(concat(concat(concat('����� �̸���', ename), '�̰�, ������'), job), '�Դϴ�')
from emp;


--- ���ڿ��� ����
select length('abcd'), lengthb('abcd') from dual;
select length('�ȳ��ϼ���'), lengthb('�ȳ��ϼ���') from dual;

-- ���ڿ� �߶󳻱�
select substr('abcd', 3), substrb('abcd', 3) from dual;
select substr('�ȳ��ϼ���', 3), substrb('�ȳ��ϼ���', 3) from dual;

select substr('abcdefgi',3,4), substr('���ع��� ��λ���',3,4) from dual;


-- ���ڿ� ã��
select instr('abcdabcdabcd', 'bc'), instr('abcdabcdabcd', 'bc', 3),
    -- 2��° b�������� bc ã��
    instr('abcdabcdabcd', 'bc', 2),
    -- 3��° c���� 2��° bc ã��
    instr('abcdabcdabcd', 'bc', 3, 2) 
from dual;

select instr('abcdefg', 'aaa') from dual;


-- ����� �̸��߿� A��� ���ڰ� �ι�° ���Ŀ� ��Ÿ���� ����� �̸��� �����´�.
select ename
from emp
where instr(ename, 'A') > 1;
-- �ι�° ���ڰ� A
select ename
from emp
where ename like '_A%';

-- Ư�� ���ڿ��� ä���
select '���ڿ�', lpad('���ڿ�', 20), rpad('���ڿ�', 20),
    lpad('���ڿ�', 20, '_'),  rpad('���ڿ�', 20, '_')
from dual;


-- ���� ����
select '     ���ڿ�     ', ltrim('     ���ڿ�     '), rtrim('     ���ڿ�     '),
trim('     ���ڿ�     ')
from dual;


-- ���ڿ� ����
select 'abcdefg', replace('abcdefg', 'abc', 'kkkkkkk')
from dual;