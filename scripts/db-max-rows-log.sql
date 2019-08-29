DROP TRIGGER IF EXISTS max_rows_log;
delimiter $
CREATE TRIGGER max_rows_log
BEFORE INSERT ON log
FOR EACH ROW BEGIN
    IF (SELECT count(*) FROM log) = 5 THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = "Max nr of logs is 5, minute cleanup.";
    END IF;
END$
delimiter ;

SET GLOBAL event_scheduler = ON;

DELIMITER $
DROP EVENT IF EXISTS log_rows_cleanup_check$
CREATE EVENT log_rows_cleanup_check
ON SCHEDULE EVERY 1 MINUTE
STARTS '2019-08-25 00:00:00'
DO
 CALL log_rows_cleanup();
$
DROP PROCEDURE IF EXISTS log_rows_cleanup$
CREATE PROCEDURE log_rows_cleanup()
BEGIN
	DECLARE nr_rows_to_delete INT DEFAULT 0;
	SET nr_rows_to_delete = (SELECT COUNT(*) FROM log) - 2;
	
	DELETE FROM log
	ORDER BY log_id ASC
	LIMIT nr_rows_to_delete;
END$

DELIMITER ;
