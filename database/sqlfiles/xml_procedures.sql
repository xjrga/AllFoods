DROP FUNCTION xmlwrap;
/
DROP FUNCTION xmlwrap02;
/
DROP FUNCTION xmlstart;
/
DROP FUNCTION xmlend;
/
CREATE FUNCTION xmlwrap(
--
IN v_name LONGVARCHAR,
IN v_value DOUBLE
--
)
RETURNS LONGVARCHAR
--
READS SQL DATA
BEGIN ATOMIC
--
DECLARE v_xmlelement LONGVARCHAR;
--
SELECT '<'||v_name||'>'||CAST(v_value AS DECIMAL(10,5))||'</'||v_name||'>'  + CHAR(10) INTO v_xmlelement FROM (VALUES(0));
--
RETURN v_xmlelement;
--
END;
/
CREATE FUNCTION xmlwrap(
--
IN v_name LONGVARCHAR,
IN v_value LONGVARCHAR
--
)
RETURNS LONGVARCHAR
--
READS SQL DATA
BEGIN ATOMIC
--
DECLARE v_xmlelement LONGVARCHAR;
--
SELECT '<'||v_name||'>'||v_value||'</'||v_name||'>'  + CHAR(10) INTO v_xmlelement FROM (VALUES(0));
--
RETURN v_xmlelement;
--
END;
/
CREATE FUNCTION xmlstart(
--
IN v_name LONGVARCHAR
--
)
RETURNS LONGVARCHAR
--
READS SQL DATA
BEGIN ATOMIC
--
DECLARE v_xmlelement LONGVARCHAR;
--
SELECT '<'||v_name||'>'+ CHAR(10) INTO v_xmlelement FROM (VALUES(0));
--
RETURN v_xmlelement;
--
END;
/
CREATE FUNCTION xmlend(
--
IN v_name LONGVARCHAR
--
)
RETURNS LONGVARCHAR
--
READS SQL DATA
BEGIN ATOMIC
--
DECLARE v_xmlelement LONGVARCHAR;
--
SELECT '</'||v_name||'>'  + CHAR(10) INTO v_xmlelement FROM (VALUES(0));
--
RETURN v_xmlelement;
--
END;
/
CREATE FUNCTION xmlcomment(
--
IN v_text LONGVARCHAR
--
)
RETURNS LONGVARCHAR
--
READS SQL DATA
BEGIN ATOMIC
--
DECLARE v_xmlelement LONGVARCHAR;
--
SELECT '<!-- '||v_text||' -->'  + CHAR(10) INTO v_xmlelement FROM (VALUES(0));
--
RETURN v_xmlelement;
--
END;
/
CREATE FUNCTION xmlwrap02(
--
IN v_name LONGVARCHAR,
IN v_value DOUBLE,
IN v_units LONGVARCHAR,
IN v_nutr_no LONGVARCHAR
--
)
RETURNS LONGVARCHAR
--
READS SQL DATA
BEGIN ATOMIC
--
DECLARE v_xmlelement LONGVARCHAR;
--
SELECT '<'||v_name||' units="'||v_units||'" nutr_no="'||v_nutr_no||'">'||CAST(v_value AS DECIMAL(10,5))||'</'||v_name||'>' + CHAR(10) INTO v_xmlelement FROM (VALUES(0));
--
RETURN v_xmlelement;
--
END;
/
CREATE FUNCTION escape_xml_element_data (IN v_text LONGVARCHAR) RETURNS LONGVARCHAR
--
READS SQL DATA BEGIN ATOMIC
--
DECLARE v_clean LONGVARCHAR;
--
SET v_clean = REGEXP_REPLACE (v_text,'&','&amp;');
SET v_clean = REGEXP_REPLACE (v_clean,'<','&lt;');
SET v_clean = REGEXP_REPLACE (v_clean,'>','&gt;');
--
RETURN v_clean;

--
END;
/
