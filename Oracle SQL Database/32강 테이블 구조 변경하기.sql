-- alter 구문을 이용하면 테이블 구조를 변경할 수 있다.
--추가(add), 수정(modify), 테이블이름변경(rename to), 컬럼 이름변경(rename column)
--컬럼삭제(drop colum), 테이블삭제(drop table)

-- alter table 테이블명
-- add (컬럼명 자료형 제약조건)

-- alter table 테이블명
-- modify (컬럼명 자료형 제약조건)

-- alter table 테이블명
-- rename to 테이블명

-- alter table 테이블명
-- rename column 컬럼명1 컬럼명2

-- alter table 테이블명
-- drop column 컬럼명

-- drop table 테이블명

drop table test_table1;

create table test_table1(
    data1 number not null,
    data2 number not null
);

-- 컬럼 추가
alter table test_table1
add (data3 number not null);

-- 컬럼의 데이터 타입 변경
alter table test_table1
modify (data3 varchar2(100));

-- 테이블 이름 변경
alter table test_table1
rename to test_table2;

-- 컬럼 이름 변경
alter table test_table2
rename column data3 to data4;

-- 컬럼 삭제
alter table test_table2
drop column data4;

-- 테이블 삭제
drop table test_table2;