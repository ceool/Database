-- 두 select문을 통해 얻어온 결과에 대해 집합 연산을 할 수 있는 명령문이다.
-- 두 select문을 통해 가져온 컬럼의 형태가 완전히 일치해야 한다.
-- UNION : 합집함
-- UNION : 합집합, 중복된 데이터 모두 가져옴
-- INTERSECT : 교집함
-- MINUS : 차집함


-- 10번 부서에 근무하고 있는 사원의 사원번호, 이름, 직무, 근무부서 번호
select empno, ename, job, deptno
from emp
where deptno=10;


-- 직무가 CLERK인 사원의 사원번호, 이름, 직무, 근무부서 번호
select empno, ename, job, deptno
from emp
where job='CLERK';



-- UNION
select empno, ename, job, deptno
from emp
where deptno=10
union
select empno, ename, job, deptno
from emp
where job='CLERK';


-- UNION ALL
select empno, ename, job, deptno
from emp
where deptno=10
union all
select empno, ename, job, deptno
from emp
where job='CLERK';


-- INTERSECT
select empno, ename, job, deptno
from emp
where deptno=10
intersect
select empno, ename, job, deptno
from emp
where job='CLERK';

-- MINUS
select empno, ename, job, deptno
from emp
where deptno=10
minus
select empno, ename, job, deptno
from emp
where job='CLERK';