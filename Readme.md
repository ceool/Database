# Database


## 데이터베이스
 - 여러 사람이 공유하고 사용할 목적으로 통합 관리되는 정보의 집합
 - 몇 개의 자료 파일을 조직적으로 통합하여 자료 항목의 중복을 없애고 자료를 구조화 하여 기억시켜 놓은 자료의 집합체

### 특징
 - 실시간 접근성
 - 지속적인 변화
 - 동시 공유
 - 내용에 대한 참조
 - 데이터 논리적 독립성

### 장점
 - 데이터 중복 최소화
 - 데이터 공유
 - 일관성, 무결성, 보안성 유지
 - 최신의 데이터 유지
 - 데이터의 표준화 가능
 - 데이터의 논리적, 물리적 독립성
 - 데이터 저장 공간 절약

### 단점
 - 데이터 베이스 전문가 필요
 - 많은 비용 부담
 - 데이터 백업과 복구가 어려움
 - 시스템의 복잡함
 - 대용량 디스크로 액세스가 집중되면 과부하 발생

<br><br>

## DBMS
### DataBase Management System
 - 데이터베이스를 관리하는 소프트웨어
 - Oracle, MS-SQL, MySQL 등

<br>

## RDBMS
 - 관계형 데이터 베이스(Relation DB)를 관리한 소프트웨어
 - RDB는 이름과 값들의 간단한 관계를 테이블화 시킨 매우 간단한 원칙의 전산 정보 데이터베이스이다.
 
![1](https://user-images.githubusercontent.com/62891711/111905268-22470180-8a8e-11eb-970f-956b081492c9.png)

<br>

## SQL
### SQL 명령문
 - 관계형 데이터 베이스 관리 시스템 관리 프로그래밍 언어
 - 표준언어는 모두 지원, 비표준은 특정 RDBMS에서만 지원

## DDL
Data Definition Language (데이터 정의어)
- 테이블과 인덱스 구조를 관리하는 언어 (create,drop, alter 등)

## DML
Data Manipulation Language (데이터 조작어)
 - 테이블 등에 데이터를 저장, 수정, 삭제, 추출 등을  처리하는 언어 (insert, update, delete, select 등)

## DCL
Data Control Language (데이터 제어어)
 - 사용자 권한, 작업의 취소 등을 처리할 수 있는 언어 (grant, revoke, commit, rollback 등)
