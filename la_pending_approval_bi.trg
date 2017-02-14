CREATE OR REPLACE TRIGGER LA_PENDING_APPROVAL_BI
BEFORE INSERT ON LA_PENDING_APPROVAL
FOR EACH ROW
DECLARE
  P_LOAD_ID       number;
BEGIN

       if (:new.load_id is null ) 
          then  SELECT LA_PENDING_APPROVAL_SEQ.NEXTVAL
            INTO P_LOAD_ID
            FROM DUAL;

            :new.LOAD_ID := P_LOAD_ID;
       end if;
                 

END;
/
