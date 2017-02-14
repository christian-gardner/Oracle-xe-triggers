CREATE OR REPLACE TRIGGER LA_IR_ASSIGNMENT_BI
BEFORE INSERT ON LA_IR_ASSIGNMENT
FOR EACH ROW
DECLARE
  P_LOAD_ID       number;
BEGIN
       if (:new.load_id is null ) 
         then 
          SELECT LA_IR_ASSIGNMENT_SEQ.NEXTVAL
          INTO P_LOAD_ID
          FROM DUAL;
       
        :new.LOAD_ID := P_LOAD_ID;
       end if;
      

END;
/
