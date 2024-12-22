
CREATE OR REPLACE FUNCTION update_history_of_employee_delete()  
  RETURNS TRIGGER   
  LANGUAGE PLPGSQL  
  AS  
$$  
BEGIN  
      INSERT INTO public.employee_history(employee_id, first_name, mid_name, last_name, gender, date_of_join, address, contact, parent_contact, email, salary)  
         VALUES(OLD.employee_id, OLD.first_name, OLD.mid_name, OLD.last_name, OLD.gender, OLD.date_of_join, OLD.address, OLD.contact, OLD.parent_contact, OLD.email, OLD.salary);  
RETURN NEW; 
END; 
$$  

CREATE TRIGGER delete_trigger  
 BEFORE DELETE  
 ON public.employee
 FOR EACH ROW  
 EXECUTE PROCEDURE update_history_of_employee_delete();  

