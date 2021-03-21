 -- 1. 그룹 함수를 사용할 경우 select ~ from ~ where 절까지 모두 수행하여 가져온 결과를 
 --    하나의 그룹으로 묶어 총합, 평균 등을 구할 수 있다.
 -- 2. 그룹 함수를 사용하면 select문을 수행하여 가져온 하나의 결과를 
 --    여러 그룹으로 나눠 그룹 가각의 총합 평균 등을 구할 수 있다.
 
-- select 컬럼명
-- from 테이블명
-- where 조건절
-- group by 그룹기준
-- order by 정렬기준



-- 각 부서별 사원들의 급여 평균을 구한다
select deptno, avg(sal)
from emp
group by deptno
order by deptno desc;


-- 각 직무별 사원들의 급여 총합을 구한다.
select job, sum(sal)
from emp
group by job
order by job asc;


-- 1500 이상 급여를 받는 사원들의 부서별 급여 평균을 구한다.
select deptno, trunc(avg(sal))
from emp
where sal >= 1500
group by deptno
order by deptno;