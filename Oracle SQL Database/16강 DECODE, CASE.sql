-- 각 사원의 부서 이름을 가져온다.
-- 10 : 인사과, 20 : 개발부, 30 : 경영지원팀,
-- 40 : 생산부
select empno, ename, 
    decode(deptno,  10, '인사과', 
                    20, '개발부', 
                    30, '경영지원팀', 
                    40, '생산부') as 부서
from emp;


-- 직급에 따라 인상된 급여액을 가져온다.
-- CLERK : 10%
-- SALESMAN : 15%
-- PRESIDENT : 200%
-- MANAGER : 5%
-- ANALYST : 20%

select empno, ename, job, sal, 
    decode(job, 'CLERK', sal*1.1,
                'SALESMAN', sal*1.15,
                'PRESIDENT', sal*3,
                'MANAGER', sal*1.05,
                'ANALYST', sal*1.2) as 급여액
from emp;


-- 급여액 별 등급을 가져온다.
-- 1000 미만 : C등급
-- 1000 이상 2000 미만 : B등급
-- 2000 이상 : A 등급

select empno, ename, sal, 
    case when sal < 1000 then 'C'
        when sal >= 1000 and sal < 2000 then 'B'
        when sal >= 2000 then 'A'
    end as 등급
from emp;



-- 직원들의 급여를 다음과 같이 인상한다.
-- 1000 이하 : 100%
-- 1000 초과 2000 미만 : 50%
-- 2000 이상 : 200%

select empno, ename, sal,
    case when sal <= 1000 then sal*2
        when sal > 1000 and sal < 2000 then sal* 1.5
        when sal >= 2000 then sal* 3
    end as 인상액
from emp;