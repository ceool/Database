-- 테이블 내의 컬럼중 primary key 지정하기 애매한 경우 1부터 1씩 증가되는 값을 저장하는 컬럼을 추가하여 사용하는 경우가 있음.
-- 이때, 1부터 1씩 증가되는 값을 구하기 위해 시퀀스를 사용

-- start with 숫자 : 시작 값, 절대 최소값보다 작을 수 없음
-- increment by : 증가 값
-- max value : 시퀀스가 가질 수 있는 최대 값, 생략하거나 nomaxvalue 일 경우, 10^27
-- min value : 시퀀스가 가질 수 있는 최소 값, 생략하거나 nominvalue일 경우 1
-- cycle : 최대 혹은 최소값까지 갈경우 순환한다.
-- cache : 시퀀스를 메모리상에서 관리할 수 있도록 설정한다.

drop table test_table1;

create table test_table1 (
    idx number constraint TEST_TABLE1_IDX_PK primary key,
    number_data number not null
);

-- ORA-04006: START WITH 에 MINVALUE 보다 작은 값은 지정할 수 없습니다
-- 기본 최소값이 1이라 오류 뜸
create sequence test_seq1
start with 0
increment by 1;


create sequence test_seq1
start with 0
increment by 1
minvalue 0;

-- ORA-08002: 시퀀스 TEST_SEQ1.CURRVAL은 이 세션에서는 정의 되어 있지 않습니다
select test_seq1.currval from dual;


insert into test_table1(idx, number_data)
values(test_seq1.nextval, 100);

insert into test_table1(idx, number_data)
values(test_seq1.nextval, 200);

select * from test_table1;

-- 현재 값 2
select test_seq1.currval from dual;

-- 시퀀스 삭제
drop sequence test_seq1;