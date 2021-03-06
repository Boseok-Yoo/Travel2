create TABLE board2(
num number(4) primary key, 
writer varchar2(21) not null, 
title varchar2(60) not null,
content varchar2(1000),
location varchar2(6) references site(sid),
writeday date default sysdate, 
readcnt number(4) default 0,
repRoot number(4), 
repStep number(4), 
repIndent number(4)
)
select * from BOARD2

drop table board2

create table site(
sid varchar2(3) primary key,
location varchar2(6) 
)
select * from site


insert into site (sid, location) values('001','서울')
insert into site (sid, location) values('002','부산')
insert into site (sid, location) values('003','대구')
insert into site (sid, location) values('004','인천')
insert into site (sid, location) values('005','광주')
insert into site (sid, location) values('006','대전')
insert into site (sid, location) values('007','울산')
insert into site (sid, location) values('008','세종')
insert into site (sid, location) values('009','경기')
insert into site (sid, location) values('010','강원')
insert into site (sid, location) values('011','충북')
insert into site (sid, location) values('012','충남')
insert into site (sid, location) values('013','전북')
insert into site (sid, location) values('014','전남')
insert into site (sid, location) values('015','경북')
insert into site (sid, location) values('016','경남')
insert into site (sid, location) values('017','제주')
insert into site (sid, location) values('018','기타')


create table member(
id varchar2(21) primary key,
name varchar2(21),
age number(3) check(age < 200),
pw varchar2(21)
)
select * from member


select num, writer, title, content, s.location, repRoot, repStep, repIndent 
from BOARD2 b
left join SITE s on b.location = sid
where location = 

select num, writer, title, content, s.location, repRoot, repStep, repIndent 
from BOARD2 b 
left join SITE s on b.location = sid 
order by repRoot desc, repStep asc

--insert(normal - withoutFile)
insert into BOARD2(num, writer, title, content, location, repRoot, repStep, repIndent)
values ('101','bossi','test','and','002',0,0,0)

--page
select * from 
(select rownum as rnum, num, title, writer, writeday, s.location, sid, readcnt, repIndent 
from(select * from BOARD2 order by repRoot desc, repStep asc) b 
left join site s on b.location = s.sid) 
where rnum >= 1 and rnum <= 105 

--read(int num)
select num, writer, title, content, s.location, repRoot, repStep, repIndent 
from BOARD2 b left join SITE s on b.location = sid  where num = 30

-- page final
select * from
(select rownum rnum, num, writer, writeday, title, content, s.location, readcnt, repRoot, repStep, repIndent 
from(select * from BOARD2 where location like decode ('', null, '%', '') order by repRoot desc, repStep asc) b 
left join site s on b.location = sid)where rnum >= 1 and rnum <= 100

--amount
select count(num) from board2 where location like decode ('', null, '%', '')


select * from BOARD2 where repRoot = 116


create table fileupload(
fNum number(38) primary key references board2(num),
fName varchar2(100) not null,
ogFName varchar2(100) not null,
url varchar2(40)
)
drop table fileupload
select * from FILEUPLOAD

--insertFile
insert into fileupload (fNum, fName, ogFName, url) values (1, 'a', 'b', '') 
				
--file+board select(list)

select num, writer, title, content, s.location, repRoot, repStep, repIndent 
from BOARD2 b
left join SITE s on b.location = sid
where location = 


select * 
from FILEUPLOAD f 
left join board2  on f.fNum = num 
where num = 170
	
				
select * from fileupload f				
left join
(select num, writer, title, content, s.location, repRoot, repStep, repIndent 
from BOARD2 b left join SITE s on b.location = sid)s
on f.fNum = num
where num = 1
				
delete from BOARD2 where num = 5	
delete from FILEUPLOAD where fNum = 5
select * from BOARD2
				
				
				
				
				
				
				