-- = <> 통해 컬럼 값이 null인지 연산 안됨
-- is null, is not null을 통해 null 비교


-- 사원중에 커미션을 받지 않는 사원의 사원번호, 이름, 커미션을 가져온다
select * from emp;

select empno, ename, comm
from emp
where COMM is null;

select empno, ename, nvl(comm, 0)
from emp
where COMM is null;


-- 사원중에 커미션을 받는 사원의 사원번호, 이름, 커미션을 가져온다
select empno, ename, comm
from emp
where COMM is not null;

-- 회사 대표(직속상관이 없는 사람)의 이름과 사원번호를 가져온다
select ename, empno
from emp
where mgr is null;


-- 회사 대표(직속상관이 있는 사람) 아닌 사람의 이름과 사원번호를 가져온다
select ename, empno
from emp
where mgr is not null;
