select * from T_XBBNHGZ_USERS;

create table T_XBBNHGZ_USERS(userid integer,username varchar(30),usermail varchar(30),userphone integer);

create schema parking authorization

set schema APP

create table T_XBBNHGZ_PARKINFO(random_id INTEGER,user_id INTEGER,vehicle_type VARCHAR(10),vehicle_number VARCHAR(10),slot_number INTEGER,parking_fare FLOAT)

select * from T_XBBNHGZ_PARKINFO;

show tables in

select * from T_XBBNHGZ_PARKINFO;

DROP TABLE TIME;

create table T_XBBNHGZ_PARKINFO(random_id INTEGER,user_id INTEGER,vehicle_type VARCHAR(10),vehicle_number VARCHAR(10),slot_number INTEGER,parking_fare FLOAT);

create table T_XBBNHGZ_SLOTS(random_id integer,slot_number integer);

create table T_XBBNHGZ_SLOTSTATUS(slot_number integer,slot_status VARCHAR);

create table T_XBBNHGZ_FARE(random_id INTEGER,entry )

CREATE TABLE APP.timee(id integer,start timestamp,endtime timestamp);

insert into APP.timee values(11,CURRENT_TIMESTAMP,'2017-02-06 16:58:36.735');

SELECT * FROM APP.TIMEE;

select {fn timestampdiff(SQL_TSI_FRAC_SECOND, startdate, enddate)} as diff 

select {fn TIMESTAMPDIFF(SQL_TSI_MINUTE, start, endtime)} as TS_DIFF from timee; 

ALTER TABLE TIME ADD COLUMN ID INTEGER;
UPDATE TIME SET ID='1' WHERE ENDTIME='2017-02-06 16:40:36.735';
 2017-02-06 16:36:33.787 2017-02-06 16:40:36.735 NULL
 
 SET SCHEMA APP;
 CREATE TABLE DEMO(NOMINAL INTEGER);

DROP TABLE DEMO;

