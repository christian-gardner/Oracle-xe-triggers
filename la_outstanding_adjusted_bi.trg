CREATE OR REPLACE TRIGGER LA_Outstanding_Adjusted_BI
BEFORE INSERT ON LA_Outstanding_Adjusted
FOR EACH ROW
DECLARE
  P_LOAD_ID       number;
BEGIN

         IF ( :new.LOAD_ID IS NULL) THEN
            SELECT LA_Outstanding_Adjusted_SEQ.NEXTVAL
            INTO P_LOAD_ID
            FROM DUAL;
            :new.LOAD_ID := P_LOAD_ID;  
         end if;
            
        :new.invoice_nbr := REPLACE(UPPER(:new.invoice_nbr),'"','');

END;
/
