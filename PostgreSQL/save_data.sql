--	HOW TO CREATE TABLE.
create table T1(
	username varchar(225),
	email varchar(225),
	constraint F_T1 primary key (username)
);

create table t2(
	username varchar(225),
	email varchar(225),
	age int,
	gender varchar(10),
	contact bigint,
	constraint PK_person primary key (username)
);



	--HOW TO UPDATE DATA IN TABLE.
update public.t1
	set contact = '1234567'
	where username = 'Chandan';

ALTER TABLE employee
Add COLUMN new1 VARCHAR(4);



	--HOW TO ALTER TABLE.
alter table public.t1
drop column contact;

delete from public.t1
where username = 'Aaryan';

drop table delete_;





	CREATING A TABLE 
create table roll(
	roll_id serial,
	roll varchar(225)
);

INSERT INTO public.roll(roll)
	VALUES ('production' );

create table work_status(
	status_id serial,
	status char(100)
);

INSERT INTO public.work_status(work_status)
	VALUES ('complete' );

create table employee (
	employee_id serial,
	first_name char(50),
	mid_name char(50),
	last_name char(50),
	gender char(10),
	date_of_join int,
	address varchar(400),
	contact int,
	parent_contact int,
	email char(100)
);

create table production_file_status(
	production_employee_id serial,
	production_start_date bigint,
	production_end_date bigint,
	production_status char(100)
);

INSERT INTO
	PUBLIC.PRODUCTION_FILE_STATUS (
		PRODUCTION_START_DATE,
		PRODUCTION_END_DATE,
		PRODUCTION_STATUS
	)
VALUES
	('20072024', '21072024', 'complete');





	OPERATOR
OPERATOR LIKE
SELECT * FROM customers
WHERE customer_name LIKE '%A%';

OPERATOR ILIKE
SELECT * FROM customers
WHERE customer_name ILIKE '%A%';  

OPERATOR LIST WHICH I HAVE USED IN C++
We can operate with different operators in the WHERE clause:

=	Equal to
<	Less than
>	Greater than
<=	Less than or equal to
>=	Greater than or equal to
<>	Not equal to
!=	Not equal to
LIKE	Check if a value matches a pattern (case sensitive)
ILIKE	Check if a value matches a pattern (case insensitive)
AND	Logical AND
OR	Logical OR
IN	Check if a value is between a range of values
BETWEEN	Check if a value is between a range of values
IS NULL	Check if a value is NULL
NOT	Makes a negative result e.g. NOT LIKE, NOT IN, NOT BETWEEN





	INNER JOIN
SELECT
	PUBLIC.EMPLOYEE.FIRST_NAME,
	PUBLIC.ROLL.ROLL
FROM
	EMPLOYEE
	INNER JOIN ROLL ON EMPLOYEE.FIRST_NAME = ROLL

	HOW CANCEL THE COPY
SELECT DISTINCT
	USERNAME
FROM
	PUBLIC.TABLE





	USE OF 'AND' AND 'OR'
select username, password
from public.table where useranme = 'user' and password = 'password'
(use of operator AND)

select username, password
from public.table where username = 'user' or password = 'password'
(use of opertor OR)







	HOW LIMIT WORKS
select * from public.table
order by ASC limit 2
(limit is used to view a limited number of data)





	SYNTAX OF MAX MIN COUNT AND AVG
select max(age)
from public.table

select min(age)
from public.table

select count(age)
from public.table

select avg(age)
from public.table






	HOW TO USE AS
select username, password
from public.employee as pe where pe.username = 'user'
(we can use as to create a object like in C++)


SELECT
	EMPLOYEE_ID,
	FIRST_NAME,
	MID_NAME,
	LAST_NAME,
	GENDER,
	DATE_OF_JOIN,
	ADDRESS,
	CONTACT,
	PARENT_CONTACT,
	EMAIL
FROM
	PUBLIC.EMPLOYEE
WHERE
	FIRST_NAME IS NOT NULL

SELECT
	EMPLOYEE_ID,
	FIRST_NAME,
	MID_NAME,
	LAST_NAME,
	GENDER,
	DATE_OF_JOIN,
	ADDRESS,
	CONTACT,
	PARENT_CONTACT,
	EMAIL
FROM
	PUBLIC.EMPLOYEE
WHERE
	FIRST_NAME IS NULL

	BETWEEN
select * from public.table where contact between 10 and 20



	INNER JOIN

SELECT
	PUBLIC.EMPLOYEE.EMPLOYEE_ID,
	PUBLIC.ROLL.ROLL_ID
FROM
	EMPLOYEE
	INNER JOIN ROLL ON EMPLOYEE.EMPLOYEE_ID = ROLL_ID


	FULL JOIN

SELECT
	EMPLOYEE_ID,
	ROLL_ID
FROM
	EMPLOYEE
	FULL JOIN ROLL ON EMPLOYEE.EMPLOYEE_ID = ROLL.ROLL_ID;

SELECT
	*
FROM
	EMPLOYEE
	FULL JOIN ROLL ON EMPLOYEE.FIRST_NAME = ROLL.ROLL;

	CROSS JOIN

SELECT * FROM 
EMPLOYEE 
CROSS JOIN ROLL;

	UPDATE

WITH
	FULL_JOIN AS (
		SELECT
			B.*
		FROM
			ROLL A
			LEFT JOIN EMPLOYEE B ON A.ROLL_ID = B.EMPLOYEE_ID
	)
UPDATE ROLL
SET
	ROLL = FULL_JOIN.FIRST_NAME
FROM
	FULL_JOIN
WHERE
	ROLL.ROLL = FULL_JOIN.FIRST_NAME;
 
	HAVING 

select first_name, sum(contact)
from employee
group by first_name
having sum(contact) > 1234567890;


with ctrl as(
	select first_name, sum(contact)
	from employee 
	group by first_name
	having sum(contact) > 1234567890
)
update employee
set tablename.email = ctrl.first_name
from ctrl
where employee.first_name = ctrl.first_name;



select column_name
from information_schema.columns
where table_name = 'employee';

update employee
set first_name = 'Aryan'
where first_name ='Aryan1'


select *
from 
employee t1
inner join employeet2 on t1.first_name = t2.first_name


--
WITH
	HOME AS (
		SELECT
			PUBLIC.EMPLOYEE.EMAIL,
			EMPLOYEE.FIRST_NAME
		FROM
			EMPLOYEE
			INNER JOIN EMPLOYEE2 ON EMPLOYEE.FIRST_NAME = EMPLOYEE2.FIRST_NAME
	)
UPDATE EMPLOYEE2
SET
	EMAIL = HOME.EMAIL
FROM
	HOME
WHERE
	EMPLOYEE2.FIRST_NAME = HOME.FIRST_NAME










-----


CREATE INDEX INDEX_NAME ON PUBLIC.EMPLOYEE (FIRST_NAME);

SELECT
	*
FROM
	PG_INDEXES
WHERE
	SCHEMANAME = 'public';

CREATE INDEX INDEX_NAME ON PUBLIC.EMPLOYEE (FIRST_NAME);

EXPLAIN
SELECT
	FIRST_NAME,
	EMAIL,
	CONTACT
FROM
	PUBLIC.EMPLOYEE
WHERE
	FIRST_NAME = 'Aryan';

WITH
	TAB AS (
		SELECT
			PUBLIC.EMPLOYEE.EMAIL,
			EMPLOYEE.FIRST_NAME
		FROM
			EMPLOYEE
			INNER JOIN EMPLOYEE2 ON EMPLOYEE.FIRST_NAME = EMPLOYEE2.FIRST_NAME
	)
UPDATE EMPLOYEE2
SET
	EMAIL = TAB.EMAIL
FROM
	TAB
WHERE
	EMPLOYEE2.FIRST_NAME = TAB.FIRST_NAME;

DROP INDEX INDEX_NAME;

SELECT
	*
FROM
	PUBLIC.EMPLOYEE2

------


create sequence if not exists sequencefirst
increment 1
start 1;

select nextval('sequencefirst');

-------

SELECT * FROM public.employee
UNION  
SELECT *
	FROM public.employee2 order by first_name asc;

CREATE TABLE IF NOT EXISTS public.employee_history
(
    employee_id integer ,
    first_name character(50),
    mid_name character(50),
    last_name character(50),
    gender character(10),
    date_of_join integer,
    address character varying(400),
    contact integer,
    parent_contact integer,
    email character(100) ,
    salary numeric
)


ALTER TABLE employee_history   
ADD COLUMN remarks VARCHAR(255);



CREATE OR REPLACE FUNCTION update_history_of_employee_delete()  
  RETURNS TRIGGER   
  LANGUAGE PLPGSQL  
  AS  
$$  
BEGIN  
      INSERT INTO public.employee_history(employee_id, first_name, mid_name, last_name, gender, date_of_join, address, contact, parent_contact, email, salary, remarks)  
         VALUES(OLD.employee_id, OLD.first_name, OLD.mid_name, OLD.last_name, OLD.gender, OLD.date_of_join, OLD.address, OLD.contact, OLD.parent_contact, OLD.email, OLD.salary, 'Deleted');  
RETURN NEW; 
END; 
$$  




CREATE TRIGGER delete_trigger  
 BEFORE DELETE  
 ON employee  
 FOR EACH ROW  
 EXECUTE PROCEDURE update_history_of_employee_delete();  

CREATE OR REPLACE FUNCTION update_history_of_employee_update()  
  RETURNS TRIGGER   
  LANGUAGE PLPGSQL  
  AS  
$$  
BEGIN  
      INSERT INTO public.employee_history(employee_id, first_name, mid_name, last_name, gender, date_of_join, address, contact, parent_contact, email, salary, remarks)  
         VALUES(OLD.employee_id, OLD.first_name, OLD.mid_name, OLD.last_name, OLD.gender, OLD.date_of_join, OLD.address, OLD.contact, OLD.parent_contact, OLD.email, OLD.salary, 'Updated');  
RETURN NEW; 
END; 
$$  


CREATE TRIGGER update_trigger  
 BEFORE DELETE  
 ON employee  
 FOR EACH ROW  
 EXECUTE PROCEDURE update_history_of_employee_update(); 

------------------


create table client(
	id int generated always as identity,
	first_name varchar(60) not null,
	last_name varchar(60) not null,
	primary key(id) 
);

create table client_edit(
	id int generated always as identity,
	client_id int not null,
	first_name varchar(60) not null,
	changed_on timestamp(5) not null
);

create or replace function first_name_change()
  returns trigger
  language plpgsql
  as
$$
  begin
    if new.first_name != old.first_name then
	  insert into client_edit(client_id,first_name,changed_on)
		values(old.id,old.first_name,now());
    end if;
  return new;
end;
$$

create trigger first_name_insert
  before update 
    on client
      for each row
      execute procedure first_name_change();

insert into client (first_name, last_name)
values ('Aryan', 'Gite'),
       ('Prem', 'Gadhave');

select * from client;

update client 
  set first_name = 'Hadden'
  where id = 2;

select * from client_edit;

-------------------

CREATE TABLE CLIENT (
	ID INT GENERATED ALWAYS AS IDENTITY,
	FIRST_NAME VARCHAR(60) NOT NULL,
	LAST_NAME VARCHAR(60) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE CLIENT_EDIT (
	ID INT GENERATED ALWAYS AS IDENTITY,
	CLIENT_ID INT NOT NULL,
	FIRST_NAME VARCHAR(60) NOT NULL,
	CHANGED_ON TIMESTAMP(5) NOT NULL
);

CREATE
OR REPLACE FUNCTION FIRST_NAME_CHANGE () RETURNS TRIGGER LANGUAGE PLPGSQL AS $$
  begin
    if new.first_name != old.first_name then
	  insert into client_edit(client_id,first_name,changed_on)
		values(old.id,old.first_name,now());
    end if;
  return new;
end;
$$
CREATE TRIGGER FIRST_NAME_INSERT BEFORE
UPDATE ON CLIENT FOR EACH ROW
EXECUTE PROCEDURE FIRST_NAME_CHANGE ();

INSERT INTO
	CLIENT (FIRST_NAME, LAST_NAME)
VALUES
	('Aryan', 'Gite'),
	('Prem', 'Gadhave');

SELECT
	*
FROM
	CLIENT;

UPDATE CLIENT
SET
	FIRST_NAME = 'Prem'
WHERE
	ID = 3;

SELECT
	*
FROM
	CLIENT_EDIT;
---------------

explain trigger



select * from client;

select * from  client_edit;

create or replace function function_name()
returns trigger
language plpgsql
as
$$ 
 begin
  if first_tableName != second_tableName then
insert into second_tableName( , , , ,.....,changed_on)
values(old., ....., now());
end if;
return new;
end ;
$$

create trigger trigger_functionName before
update/delete second_tableName for each row
EXECUTE PROCEDURE trigger_functionName ();


-----------------

create table pgup(
	id int generated always as identity,
	first_name varchar,
	last_name varchar,
	primary key (id)
);


insert into public.pgup(first_name, last_name )
values ('Prem', 'Gadhave');

create or replace function get_info(p_first_name varchar)
returns table (first_name varchar, last_name varchar)
language plpgsql
as
$$
begin 
return query 
select u.first_name , u.last_name
from pgup u
where u.first_name = p_first_name;
end;
$$;

select * from get_info('Aryan');

---------------------------

create table employee_f (
	user_id int,
	password varchar(20),
	primary key (user_id)
);

insert into public.employee_f (user_id, password) values(103, 'password103');

create or replace function check_user(input_user_id int, input_password varchar)
returns void as $$
declare user_exists boolean;
begin 

select exists (
	select 1
	from employee_f
	where user_id = input_user_id and password = input_password
) into user_exists;

if not user_exists then
raise notice 'no match found for user_id % and password %', input_user_id, input_password;
else
raise notice 'match found user_id: %, password: %', input_user_id, input_password;
end if;
end;
$$
language plpgsql;

select check_user(102,'password102');

--------------------------






















