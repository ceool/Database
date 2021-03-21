-- select 문을 통해 가져올 결과를 그룹으로 묶고,
-- 그룹 내에서 지정된 컬럼의 총합, 평균 등을 구할 수 있는 함수

-- 사원들의 급여 총합을 구한다.
select sum(sal)
from emp;


-- 사원들의 커미션을 가져온다. (null 자동 제외)
select sum(comm)
from emp;


-- 급여가 1500 이상인 사원들의 급여 총합을 구한다.
select sum(sal)
from emp
where sal >= 1500;

-- 20번 부서에 근무하고 있는 사원들의 급여 총합을 구한다.
select sum(sal)
from emp
where deptno = 20;


-- 직무가 SALESMAN인 사원들의 급여 총합을 구한다.
select sum(sal)
from emp
where job = 'SALESMAN';

-- 전 사원의 급여 평균을 구한다
select trunc(avg(sal))
from emp;


-- 커미션을 받는 사원들의 커미션 평균을 구한다 (null은 자동 제외)
select avg(comm)
from emp
where comm != 0;
-- where comm != 0 and comm is not null;



-- 전 사운의 커미션의 평균을 구한다
select avg(nvl(comm, 0))
from emp;


-- 커미션 받는 사원들의 급여 평균을 구한다
select avg(sal)
from emp
where comm is not null and comm != 0;


-- 30번 부서에 근무하고 있는 사원들의 급여 평균을 구한다
select round(avg(sal))
from emp
where deptno = 30;

-- 직무가 MANAGER인 사원들의 급여 + 커미션 평균을 구한다
select avg(sal + nvl(comm, 0))
from emp
where job = 'MANAGER';


-- 사원들의 총 수를 가져온다
select count(empno)
from emp;
select count(*) from emp;

-- 커미션 받는 사람 총 수
select count(comm)
from emp
where comm != 0;

-- 사원들의 급여 최대, 최소값을 가져온다.
select max(sal), min(sal)
from emp;