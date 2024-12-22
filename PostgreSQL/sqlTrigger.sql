select * from client;

select * from  client_edit;

create or replace function function_name()
  returns trigger
  language plpgsql
  as
  $$ 
   begin
    if first_tableName != second_tableName then
    insert into second_tableName( , , , ,.....)
      values(old., ....., now());
     end if;
    return new;
   end ;
  $$

create trigger trigger_functionName before
update/delete second_tableName for each row
EXECUTE PROCEDURE trigger_functionName ();

select * from client;

select * from client_edit;