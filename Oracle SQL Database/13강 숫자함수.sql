-- dual : 계산 테이블
select 10 + 10 from dual;

-- 절대값 abs
select abs(-10) from dual;

--버림 floor
select floor(12.4555) from dual;
select floor(12.8888) from dual;

--반올림 round
select round(12.4555) from dual;
select round(12.8888) from dual;


select 12.8888, round(12.8888), round(888.8888,2), round(888.8888,-2) from dual;

-- 급여가 2천 이하인 사원들의 급여를 20%씩 인상한다. 단 10의 자리를 기준으로 반올림한다.
select sal, sal*1.2, round(sal*1.2, -2)
from emp
where sal <= 2000;


-- 버림, 자리수를 정할 수 있다
select 1112.3456, trunc(1112.3456), trunc(1112.3456, 2), trunc(1112.3456,- 2) from dual;


-- 전 직원의 급여를 10자리 이하를 삭감한다
select sal, trunc(sal, -2)
from emp;


-- 나머지 구하기
select mod(10,3), mod(10,4) from dual;