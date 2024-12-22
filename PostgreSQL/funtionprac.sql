CREATE TABLE TABLE_1 (
	ID SERIAL,
	FIRST_NAME CHAR(60),
	MID_NAME CHAR(60),
	LAST_NAME CHAR(60),
	EMAIL CHAR(60),
	CONTACT BIGINT,
	ADDRESS CHAR(200),
	PRIMARY KEY (ID)
);


insert into public.pgup(first_name, last_name )
values ('Prem', 'Gadhave');

update tab

CREATE TABLE TABLE_2 (
	ID SERIAL,
	FIRST_NAME CHAR(60),
	MID_NAME CHAR(60),
	LAST_NAME CHAR(60),
	EMAIL CHAR(60),
	CONTACT BIGINT,
	ADDRESS CHAR(200),
	changed_on timestamp,
	PRIMARY KEY (ID)
);

drop table table_2;

create or replace function table_update()
returns trigger 
language plpgsql
$$
begin
	if new.table_1 != old.table_1 then
insert into table_2(table_id,first_name,mid_name,last_name,email,cotact,address)
values (old.id,old.first_name,old.mid_name,old.last_name,old.email,old.contact,old.address,now());
end if;
return new;
end;
$$
create trigger table_update before
update table2 for each row
EXECUTE PROCEDURE table_upadte ();
