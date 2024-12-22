--trigger start 

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

-- trigger end

----------------------------------------------------------------


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


----------------------------------------------------------------

-- Indexes is the special tool used to enhance the retrieval of data from the databases.
--EX: A database index is parallel to the index of a book. An index creates an access for all the values, which displays on the indexed columns.


create index index_1 on client(first_name);

explain select * from client
where first_name = 'hadeen'