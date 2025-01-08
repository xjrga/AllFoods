CREATE FUNCTION getGL(
--
IN v_gi DECIMAL(10,5),
IN v_carbsbydiff DECIMAL(10,5),
IN v_fiber DECIMAL(10,5)
--
) RETURNS DECIMAL(10,5)
--
READS SQL DATA
BEGIN ATOMIC
--
DECLARE v_gl DECIMAL(10,5);
--
SET v_gl = v_gi / 100 * (v_carbsbydiff - v_fiber);
--
RETURN v_gl;
--
END;
/
