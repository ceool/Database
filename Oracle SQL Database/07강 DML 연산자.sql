-- 사원들의 급여액과 급여액에서 1000을 더한 값, 200을 뺀 값, 2를 곱한 값, 2로 나눈 값을 가져온다.
select sal, sal + 1000, sal - 200, sal * 2, sal / 2
from emp;

-- 각 사원의 급여액, 커미션, 급여 + 커미션 액수를 가져온다
select sal, nvl(comm, 0), sal + nvl(comm, 0)
from emp;


-- (concat 연산자)사원들의 이름과 직무를 다음 양식으로 가져온다. 
-- 000 사원의 담당 직무는 xxx 입니다.
select ename, job
from emp;

select ename || '사원의 담당 직무는 ' || job || '입니다'
from emp;


-- Distinct (중복된 로우 제거)
-- 사원들이 근무하고 있는 근무 부서의 번호를 가져온다.
select distinct deptno
from emp;

