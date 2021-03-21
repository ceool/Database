--JDBC
-- Java 프로그램과 데이터베이스를 연결하여 데이터를 관리할 수 있도록 하는 기술
-- JDBC를 사용하기 위해서는 JDBC 드라이버가 필요한데, JDBC 드라이버는 데이터베이스 제작사가 제공하고 있다.
-- D:\app\사용자이름\product\11.2.0\dbhome_1\jdbc\lib\ojdbc6.jar

--순서
--JDBC 드라이버 설정 - JDBC 드라이버 로딩 - 데이터베이스 접속 - 쿼리문 전달 - 결과 처리

drop table test_table;


create table test_table (
    test_idx number constraint TEST_TABLE_PK primary key,
    test_number  number not null,
    test_str varchar2(100) not null
);

create sequence test_seq
start with 0
increment by 1
minvalue 0;

select * from test_table;