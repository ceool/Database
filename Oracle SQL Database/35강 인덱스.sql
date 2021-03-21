-- 데이터베이스에서 검색속도를 빠르게 하기 위해서 사용

-- 장점
-- 검색속도가 빨라진다
-- 시스템의 부하를 줄여 성능 향상시킨다

-- 단점
-- 추가적인 기억공간이 필요
-- 인덱스 생성 시간이 오래걸린다
-- insert, update, delete와 같은 변경 작업이 자주 일어나면 오히려 성능 저하를 가져올 수 있다.


drop table test_table100;
drop table emp01;

create table test_table100 (
    data1 number constraint TEST_TABLE100_PK primary key,
    data2 number not null
);


-- TEST_TABLE100_PK가 인덱스에 자동으로 추가된 것을 확인 가능.
select index_name, table_name, column_name
from user_ind_columns;



create table emp01
as
select * from emp;

select * from emp01;


-- 계속 실행
-- 3,670,016개 행 이(가) 삽입되었습니다.
insert into emp01
select * from emp01;

-- count : 7340032
select count(*) from emp01;


insert into emp01 (ename)
values ('홍길동');

-- 찾는데 0.106초 걸림
select * from emp01
where ename = '홍길동';

-- ename index 생성
create index emp01_idx
on emp01(ename);

-- 0.016초 걸림
select * from emp01
where ename = '홍길동';