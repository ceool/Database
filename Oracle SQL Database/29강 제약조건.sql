-- 테이블 데이터를 저장 혹은 수정할 떄 컴럼의 값에 대한 조건을 설정하는 것
-- 설정된 조건에 위배되는 값을 컬럼에 저장할 수 없으며 데이터의 무결성을 위한 구문

--not null : 컬럼에 null을 허용하지 않음
--unique : 중복된 값을 허용하지 않음, 단 null은 무한대로 저장할 수 있음
--primary key : 중복된 값을 허용하지 않으며 null 값을 허용하지 않음. 
             -- 각 로우를 구분하기 위한 유일한 값을 저장하기 위해 사용

--추가적으로,
-- check : 칼럼에 저장될 값을 지정

drop table test_table1;
drop table test_table2;
drop table test_table3;
drop table test_table4;
drop table test_table5;
drop table test_table6;


-- NOT NULL
create table test_table1 (
data1 number,
data2 number not null
);

insert into test_table1(data1, data2)
values (100, 101);


select * from test_table1;

--ORA-01400: NULL을 ("SCOTT"."TEST_TABLE1"."DATA2") 안에 삽입할 수 없습니다
insert into test_table1(data1)
values(200);

insert into test_table1(data2)
values(201);

select * from test_table1;




-- unique : 중복된 값을 허용, null은 무한대로 허용 (이름 지정 !!)
create table test_table2 (
data1 number,
data2 number constraint TEST_TABLE2_DATA2_UK unique
);

insert into test_table2(data1, data2)
values (100, 101);

select * from test_table2;

--ORA-00001: 무결성 제약 조건(SCOTT.TEST_TABLE2_DATA2_UK)에 위배됩니다
insert into test_table2(data1, data2)
values (100, 101);

insert into test_table2(data1, data2)
values (200, 201);

--ORA-00001: 무결성 제약 조건(SCOTT.TEST_TABLE2_DATA2_UK)에 위배됩니다
insert into test_table2(data1, data2)
values (300, 201);

insert into test_table2(data1, data2)
values (200, null);

insert into test_table2(data1)
values (200);

select * from test_table2;





--primary key : 중복된 값을 허용하지 않으며 null 값을 허용하지 않음. (이름 필수!)
create table test_table3(
    data1 number,
    data2 number constraint TEST_TABLE3_DATA2_PK primary key
);

select * from test_table3;

insert into test_table3(data1, data2)
values (100, 100);

--ORA-00001: 무결성 제약 조건(SCOTT.TEST_TABLE3_DATA2_PK)에 위배됩니다
insert into test_table3(data1, data2)
values (200, 100);

--ORA-01400: NULL을 ("SCOTT"."TEST_TABLE3"."DATA2") 안에 삽입할 수 없습니다
insert into test_table3(data1)
values (100);




-- foreign key (외래키) : 특정 테이블의 컬럼을 참조하는 제약 조건
create table test_table4(
    data1 number constraint TEST_TABLE4_PK primary key,
    data2 number not null
);

insert into test_table4 (data1, data2)
values (100, 101);
insert into test_table4 (data1, data2)
values (200, 201);

select * from test_table4;


create table test_table5(
    data3 number not null,
    data4 number constraint TEST_TABLE5_DATA4_FK
                 references test_table4(data1)
);

insert into test_table5 (data3, data4)
values (1, 100);
insert into test_table5 (data3, data4)
values (2, 100);
insert into test_table5 (data3, data4)
values (3, 200);
insert into test_table5 (data3, data4)
values (4, 200);

select * from test_table5;

insert into test_table5 (data3, data4)
values (5, null);

insert into test_table5 (data3)
values (6);

select * from test_table5;

-- ORA-02291: 무결성 제약조건(SCOTT.TEST_TABLE5_DATA4_FK)이 위배되었습니다- 부모 키가 없습니다
insert into test_table5 (data3, data4)
values (7, 300);





-- check : 칼럼에 저장될 값을 저장
create table test_table6(
    data1 number constraint TEST_TABLE6_DATA1_CK
                check (data1 between 1 and 10),
    data2 number constraint TEST_TABLE6_DATA2_CK
                check (data2 in(10, 20, 30))
);

insert into test_table6 (data1, data2)
values(1, 10);

insert into test_table6 (data1, data2)
values(2, 20);

select * from test_table6;

--ORA-02290: 체크 제약조건(SCOTT.TEST_TABLE6_DATA1_CK)이 위배되었습니다
insert into test_table6 (data1, data2)
values(20, 10);
--ORA-02290: 체크 제약조건(SCOTT.TEST_TABLE6_DATA2_CK)이 위배되었습니다
insert into test_table6 (data1, data2)
values(5, 100);

insert into test_table6 (data1)
values(5);

select * from test_table6;