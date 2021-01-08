--회원정보 테이블

create table member(
	mno number(38) primary key,
	mid varchar2(40) not null,
	mpw varchar2(40) not null,
	mname varchar2(30) not null,
	mphone varchar2(30) not null,
	memail varchar2(50) not null,
	maddr varchar2(100),
	maddr_region1 varchar2(30),
	maddr_region2 varchar2(40),
	maddr_etc varchar2(100),
	mgender number(20) not null,
	mbirth number(30) not null,
	mdate date
);

select * from member;

drop table member;