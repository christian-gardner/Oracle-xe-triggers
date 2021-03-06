CREATE OR REPLACE TRIGGER BOA_PROCESS_LOG_TMP_TRG
BEFORE INSERT ON BOA_PROCESS_LOG_TMP
FOR EACH ROW
DECLARE
  P_KEY   number;
  P_DATE DATE;
BEGIN

  SELECT BOA_PROCESS_LOG_TMP_SEQ.nextval
    INTO P_KEY
    FROM dual;

    :new.PID      := P_KEY;
END;
/
