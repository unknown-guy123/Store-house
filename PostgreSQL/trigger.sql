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

ALTER TABLE employee_history   
ADD COLUMN remarks VARCHAR(255);


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



