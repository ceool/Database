-- Ʈ������̶� ���� ����� ������� ���� �ϳ��� �۾� ����
-- ����Ŭ �����ͺ��̽��� �����ڰ� ������ insert, update, delete���� �޸𸮻󿡼��� �����ϰ� ��ũ�� �ݿ�x
-- �̴� �Ǽ��� ���� �������� ������ ���� ��������.

-- commit : Ʈ������� �Ϸ��ϰ� ��ũ�� �ݿ��Ѵ�. �����Ұ�.
-- rollback : Ʈ������� ����Ѵ�.
-- savepoint : rollback�� ������ �����Ѵ�.


--�ܼ�â 2���� ��� �Ѵ�.


-- 1�� �ܼ�
drop table test_table1;

create table test_table1(
    data1 number not null,
    data2 number not null
);



-- 2�� �ܼ�
desc test_table1;



-- 1�� �ܼ�
drop table test_table1;



-- 2�� �ܼ�
desc test_table1;
--ORA-04043: test_table1 ��ü�� �������� �ʽ��ϴ�. 




--1�� �ܼ�
create table test_table1(
    data1 number not null,
    data2 number not null
);

insert into test_table1 (data1, data2)
values(100, 200);

insert into test_table1 (data1, data2)
values(101, 201);




-- 2�� �ܼ�
select * from test_table1;
--���õ� ���ڵ尡 �����ϴ�.



-- 1�� �ܼ�
select * from test_table1;

     DATA1      DATA2                                                                                                  
     ---------- ----------                                                                                                        
     100        200                                                                                                          
     101        201     

commit;



-- 2�� �ܼ�
select * from test_table1;
     DATA1      DATA2                                                                                                  
     ---------- ----------                                                                                                        
     100        200                                                                                                          
     101        201   
     
   
   
-- 1�� �ܼ�
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
     
