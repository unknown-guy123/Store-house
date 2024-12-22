CREATE TABLE EMPLOYEE_F (
	USER_ID INT,
	PASSWORD VARCHAR(20),
	PRIMARY KEY (USER_ID)
);

INSERT INTO
	PUBLIC.EMPLOYEE_F (USER_ID, PASSWORD)
VALUES
	(103, 'password103');

CREATE
OR REPLACE FUNCTION CHECK_USER (INPUT_USER_ID INT, INPUT_PASSWORD VARCHAR) RETURNS VOID AS $$
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
$$ LANGUAGE PLPGSQL;

SELECT
	CHECK_USER (102, 'password102');