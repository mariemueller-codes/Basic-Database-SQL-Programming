/*
The data dictionary has three primary uses:
• Oracle accesses the data dictionary to find information about users, 
schema objects, and storage structures.
• Oracle modifies the data dictionary every time that a data definition 
language (DDL) statement is issued.
• Any Oracle user can use the data dictionary as a read-only reference 
for information about the database.
*/

DESCRIBE DICTIONARY;

SELECT * FROM DICTIONARY;

SELECT TABLE_NAME, COMMENTS FROM DICTIONARY WHERE TABLE_NAME LIKE 'DBA_%';

SELECT TABLE_NAME, COMMENTS FROM DICTIONARY WHERE TABLE_NAME LIKE 'USER_%';

SELECT USER_TABLES;

SELECT TABLE_NAME FROM USER_TABLES;

SELECT OBJECT_NAME FROM USER_OBJECTS WHERE OBJECT_TYPE = 'TABLE';

SELECT OBJECT_NAME, OBJECT_TYPE FROM USER_OBJECTS;

SELECT TABLE_NAME, COLUMN_NAME, COMMENTS FROM DICT_COLUMNS WHERE TABLE_NAME LIKE 'USER_%';

SELECT TABLE_NAME, COLUMN_NAME, COMMENTS FROM DICT_COLUMNS WHERE COLUMN_NAME = "BLOCK"
AND TABLE_NAME LIKE 'USER_%'; 

DESCRIBE V$VERSION;

SELECT * FROM V$VERSION;
