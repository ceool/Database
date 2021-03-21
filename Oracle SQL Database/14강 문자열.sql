-- 대문자 -> 소문자
select 'ABcdEF', lower('ABcdEF') from dual;


-- 사원들의 이름을 소문자
select ename, lower(ename) 
from emp;


-- 소문자 -> 대문자
select 'ABcdEF', upper('ABcdEF') from dual;


-- 사원들의 이름을 가져온다. 대문자 -> 소문자 -> 대문자
select ename, lower(ename), upper(lower(ename))
from emp;


-- 첫글자만 대문자로, 나머지는 소문자로
select 'abCDEF', initcap('aBCDEF') from dual;


-- 사원 이름을 첫글자, 나머지는 소문자로 가져온다
select ename, initcap(ename) from emp;


-- 문자열 연결
select concat('abc', 'def') from dual;
select concat(concat('abc', 'def'), 'zzz') from dual;


-- 사원들의 이름과 직무를 다음과 같이 가져온다.
-- 사원의 이름은 ooo이고, 직무는 ooo입니다.
select '사원의 이름은 ' || ename || '이고, 직무는' || job || '입니다.'
from emp;

select concat(concat(concat(concat('사원의 이름은', ename), '이고, 직무는'), job), '입니다')
from emp;


--- 문자열의 길이
select length('abcd'), lengthb('abcd') from dual;
select length('안녕하세요'), lengthb('안녕하세요') from dual;

-- 문자열 잘라내기
select substr('abcd', 3), substrb('abcd', 3) from dual;
select substr('안녕하세요', 3), substrb('안녕하세요', 3) from dual;

select substr('abcdefgi',3,4), substr('동해물과 백두산이',3,4) from dual;


-- 문자열 찾기
select instr('abcdabcdabcd', 'bc'), instr('abcdabcdabcd', 'bc', 3),
    -- 2번째 b에서부터 bc 찾기
    instr('abcdabcdabcd', 'bc', 2),
    -- 3번째 c에서 2번째 bc 찾기
    instr('abcdabcdabcd', 'bc', 3, 2) 
from dual;

select instr('abcdefg', 'aaa') from dual;


-- 사원의 이름중에 A라는 글자가 두번째 이후에 나타나는 사원의 이름을 가져온다.
select ename
from emp
where instr(ename, 'A') > 1;
-- 두번째 글자가 A
select ename
from emp
where ename like '_A%';

-- 특정 문자열로 채우기
select '문자열', lpad('문자열', 20), rpad('문자열', 20),
    lpad('문자열', 20, '_'),  rpad('문자열', 20, '_')
from dual;


-- 공백 제거
select '     문자열     ', ltrim('     문자열     '), rtrim('     문자열     '),
trim('     문자열     ')
from dual;


-- 문자열 변경
select 'abcdefg', replace('abcdefg', 'abc', 'kkkkkkk')
from dual;