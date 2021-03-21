-- 제약 조건을 설정할 때 각 컬럼마다 지정할 수 있지만 하단부분에 몰아서 지정가능
-- 컬럼 명 앞에 기술하는 것을 컬럼 레벨, 하단에 몰아서 기술하는 것을 테이블 레벨 제약조건이라고 부름


drop table test_table10;
drop table test_table11;
drop table test_table12;


-- 컬럼 레벨 제약조건
create table test_table10 (
    data1 number constraint TEST_TABLE10_DATA1_PK primary key,
    data2 number not null constraint TEST_TABLE10_DATA2_UK UNIQUE,
    data3 number not null constraint TEST_TABLE10_DATA3_FK
                          REFERENCES emp(empno), 
    data4 number not null constraint TEST_TABLE10_DATA4_CK
                          CHECK(data4 between 1 and 10),
    data5 number not null constraint TEST_TABLE10_DATA5_CK
                          CHECK(data5 in (10, 20, 30))
);
                          

-- 테이블 레벨 제약조건
create table test_table11 (
    data1 number,
    data2 number not null,
    data3 number not null,
    data4 number not null,
    data5 number not null,
    
    constraint TEST_TABLE11_DATA1_PK primary key(data1),
    constraint TEST_TABLE11_DATA2_UK UNIQUE(data2),
    constraint TEST_TABLE11_DATA3_FK foreign key(data3)
                                     REFERENCES emp(empno),
    constraint TEST_TABLE11_DATA4_CK CHECK(data4 between 1 and 10),
    constraint TEST_TABLE11_DATA5_CK CHECK(data5 in (10, 20, 30))
);


--복합키
 -- 테이블 레벨 제약조건을 설정할 때 하나 이상의 컬럼의 하나의 primary key로 묶어서 사용 가능
 -- 복합키의 경우 각 컬럼에 중복된 데이터가 허용이 되지만 한 로우의 모든 복합키 컬럼이 중복되는 것은 허용하지 않는다
 
create table test_table12(
    data1 number,
    data2 number,
    constraint TEST_TABLE12_COMBO_PK primary key(data1, data2)
 );
 
insert into test_table12(data1, data2)
values(100, 200);
 
insert into test_table12(data1, data2)
values(100, 300);
 
insert into test_table12(data1, data2)
values(400, 200);
 
select * from test_table12;
 
-- ORA-00001: 무결성 제약 조건(SCOTT.TEST_TABLE12_COMBO_PK)에 위배됩니다
insert into test_table12(data1, data2)
values(100, 200);

--ORA-01400: NULL을 ("SCOTT"."TEST_TABLE12"."DATA2") 안에 삽입할 수 없습니다
insert into test_table12(data1, data2)
values(100, null);