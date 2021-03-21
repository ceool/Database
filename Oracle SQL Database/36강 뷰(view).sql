-- 뷰는 데이터베이스에서 제공하는 가상의 테이블을 의미
-- 뷰를 사용하면 복잡한 쿼리문을 대신할 수 있기 때문에 개발의 용이성을 가질 수 있음.
-- 뷰는 뷰를 만들 때 사용한 쿼리문을 저장하는 것이며 뷰를 조회할 때 뷰를 만들 때 사용한 쿼리문이 동작하게 된다.

--뷰 생성 권한 설정 (system 같은 관리자 계정으로 접속하여 부여)
-- 일반 계정의 경우 뷰를 생성할 수 있는 권한이 없기 때문에 뷰 생성 권한을 설정해줘야 한다.
-- ex) grant create view to 계정이름;

--뷰 샐성하기
--create view 뷰이름
--as
--서브쿼리


-- view는 테이블 하나로 했을 때 insert 가능

drop view emp_dept_view;
drop view emp100_dept100_view;
drop view emp200_view;
drop table emp100;
drop table dept100;


-- 사원의 사원번호, 이름, 급여, 근무부서이름, 근무지역을 가지고 있는 뷰를 생성한다.
create view emp_dept_view
as
select a1.empno, a1.ename, a1.sal, a2.dname, a2.loc
from emp a1, dept a2
where a1.deptno  = a2.deptno;


-- 뷰를 조회한다.
select * from emp_dept_view;

-- 테이블을 생성
create table emp100
as
select * from emp;

create table dept100
as
select * from dept;


create view emp100_dept100_view
as
select a1.empno, a1.ename, a1.sal, a2.dname, a2.loc
from emp100 a1, dept100 a2
where a1.deptno  = a2.deptno;


-- 원본 테이블에 데이터를 저장한다
insert into emp100 (empno, ename, sal, deptno)
values (5000, '홍길동', 2000, 10);

select * from emp100;

select * from emp100_dept100_view;

-- SQL 오류: ORA-01779: 키-보존된것이 아닌 테이블로 대응한 열을 수정할 수 없습니다
insert into emp100_dept100_view (empno, ename, sal)
values (6000, '김길동', 2000);


-- view는 테이블 하나로 했을 때 insert 가능
create view emp200_view
as
select empno, ename, sal
from emp100;

insert into emp200_view (empno, ename, sal)
values (7000, '박길동', 3000);


select * from emp100;

