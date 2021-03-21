-- 트랜잭션이란 최종 결과를 내기까지 위한 하나의 작업 단위
-- 오라클 데이터베이스는 개발자가 전달한 insert, update, delete문을 메모리상에서만 수행하고 디스크에 반영x
-- 이는 실수로 인한 데이터의 유실을 막기 위함히다.

-- commit : 트랜잭션을 완료하고 디스크에 반영한다. 복구불가.
-- rollback : 트랜잭션을 취소한다.
-- savepoint : rollback의 단위를 지정한다.


--콘솔창 2개를 열어서 한다.


-- 1번 콘솔
drop table test_table1;

create table test_table1(
    data1 number not null,
    data2 number not null
);



-- 2번 콘솔
desc test_table1;



-- 1번 콘솔
drop table test_table1;



-- 2번 콘솔
desc test_table1;
--ORA-04043: test_table1 객체는 존재하지 않습니다. 




--1번 콘솔
create table test_table1(
    data1 number not null,
    data2 number not null
);

insert into test_table1 (data1, data2)
values(100, 200);

insert into test_table1 (data1, data2)
values(101, 201);




-- 2번 콘솔
select * from test_table1;
--선택된 레코드가 없습니다.



-- 1번 콘솔
select * from test_table1;

     DATA1      DATA2                                                                                                  
     ---------- ----------                                                                                                        
     100        200                                                                                                          
     101        201     

commit;



-- 2번 콘솔
select * from test_table1;
     DATA1      DATA2                                                                                                  
     ---------- ----------                                                                                                        
     100        200                                                                                                          
     101        201   
     
   
   
-- 1번 콘솔
update test_table1
set data2=2000
where data1=100; 

delete from test_table1;
select * from test_table1;
rollback;
select * from test_table1;
     DATA1      DATA2                                                                                                  
     ---------- ----------                                                                                                        
     100        200                                                                                                          
     101        201   
     

insert into test_table1 (data1, data2)
values(103, 203);
savepoint p1;
insert into test_table1 (data1, data2)
values(104, 204);
rollback to p1;
select * from test_table1;
     DATA1      DATA2                                                                                                  
     ---------- ----------                                                                                                        
     100        200                                                                                                          
     101        201   
     103        203
     
