 -- Group by로 묶인 각 그룹들 중에 실제 가져올 그룹을 선택한 조건을 having 절에 작성
 -- Having은 group by 절의 조건이 됨
 
 
 -- 부서별 평균 급여가 2000 이상인 부서의 급여 평균을 가져온다.
 select deptno, round(avg(sal)) as 급여평균
 from emp
 group by deptno
 having avg(sal) >= 2000
 order by deptno;
 
 -- 부서별 최대 급여액이 3000 이하인 부서의 급여 총합을 가져온다.
 select deptno, sum(sal)
 from emp
 group by deptno
 having max(sal) <= 3000
 order by deptno;
 
 
 -- 부서별 최소 급여액이 1000 이하인 부서에서 직무가 CLERK인 사원들의 급여 총합을 구함
 select deptno, sum(sal)
 from emp
 where job = 'CLERK'
 group by deptno
 having min(sal) <= 1000
 order by deptno asc;
 
 
 
-- 각 부서의 급여 최소가 900 이상 10000 이하인 부서의 사원들 중 1500 이상의
-- 급여를 받는 사원들의 평균 급여액을 가져온다.
select deptno, avg(sal)
from emp
where sal >= 1500
group by deptno
having min(sal) >= 900 and max(sal) <= 10000
order by deptno;