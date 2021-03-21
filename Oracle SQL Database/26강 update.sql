-- 로우 내의 컬럼 값을 수정하는 구문이다.

-- update 테이블명
-- set 컬럼=값, 컬럼=값...
-- where 조건문

drop table emp01;
create table emp01
as
select * from emp;

select * from emp01;


-- 사원들의 부서 번호를 40번으로 변경한다.
update emp01
set deptno = 40;

select * from emp01;



-- 사원들의 입사일을 오늘로 변경한다
update emp01
set hiredate = sysdate;

select * from emp01;


-- 사원들의 직무를 개발자로 변경한다
update emp01
set JOB = '개발자';

select * from emp01;



drop table emp01;
create table emp01
as
select * from emp;

select * from emp01;

-- 사원들의 부서번호를 40, 입사일을 오늘, 직무를 개발자로 변경한다.
update emp01
set deptno=40, hiredate=sysdate, job='개발자';
select * from emp01;


drop table emp01;
create table emp01
as
select * from emp;

select * from emp01;


-- 10번 부서에 근무하고 있는 사원들을 40번 부서로 변경
update emp01
set deptno = 40
where deptno = 10;

select * from emp01;


-- SALESMAN 들의 입사일을 오늘, comm을 2000으로 수정한다.
update emp01
set hiredate = sysdate, comm = 2000
where job = 'SALESMAN';

select * from emp01;



-- 전체 사원의 평균 급여보다 낮은 사원들의 급여를 50% 인상한다
update emp01
set sal = sal * 1.5
where sal < (select avg(sal)
                    from emp01);
                    
select * from emp01;




-- 20번 부서에 근무하고 있는 사원들의 직속상관을 KING으로 하고 급여를 전체급여의 최고액으로 설정한다
update emp01
set mgr = (select empno
            from emp01
            where ename='KING'), 
    sal = (select max(sal)
           from emp01)
where deptno=20;

select * from emp01;





-- 직무가 CLERK인 사원들의 직무와 급여액을 20번 부서에 근무하고 있는 사원중
-- 급여 최고액을 받는 사원의 직무와 급여액으로 변경한다.
update emp01
set job = (select job
            from emp01
            where sal = (select max(sal)
                         from emp01)), 
    sal = (select sal
            from emp01
            where sal = (select max(sal)
                         from emp01))
where job = 'CLERK';

update emp01
set (job, sal) = (select job, sal
                  from emp01
                  where sal = (select max(sal)
                               from emp01))
where job = 'CLERK';

select * from emp01;