DROP TRIGGER IF EXISTS max_rows_log;
delimiter $
CREATE TRIGGER max_rows_log
BEFORE INSERT ON log
FOR EACH ROW BEGIN
    IF (SELECT count(*) FROM log) = 100 THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = "Max nr of logs is 100, hourly cleanup.";
    END IF;
END$
delimiter ;
