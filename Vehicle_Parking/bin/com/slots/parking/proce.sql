create or replace procedure demoprocedure    
(id IN NUMBER, name IN VARCHAR2)    
is    
begin    
insert into userdemo123 values(id,name);    
end;    
/      

begin
	demoprocedure(4,'XXX');
end;
/


select * from userdemo123;