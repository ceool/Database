-- select 컬럼명 from 테이블명 where 컬럼명 like 와일드카드
-- _: 글자 하나 의미
-- %: 글자 0개 이상을 의미

-- 이름이 F로 시작하는 사원의 이름과 사원 번호를 가져온다
select ename, empno
from emp
where ename like 'F%';

-- 이름이 S로 끝나는 사원의 이름과 사원 번호를 가져온다
select ename, empno
from emp
where ename like '%S';


-- 이름에 A가 포함되어 있는 사원의 이름과 사원 번호를 가져온다
select ename, empno
from emp
where ename like '%A%';

-- 이름 두번째 글자가 A인 사원의 사원 이름, 사원 번호를 가져온다
select ename, empno
from emp
where ename like '_A%';

-- 이름이 4글자인 사원의 사원 이름, 사원 번호를 가져온다
select ename, empno
from emp
where ename like '____';

