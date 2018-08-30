dont forget ";" after every statment
<------creating a table------->

CREATE TABLE <table name>(
  <coloumn 1 name> <data type>
  <coloumn 2 name> <data type>
  <coloumn 3 name> <data type>
);
//to add default values while the table is created
  <coloumn 1 name> <data type> DEFAULT <value>

<---- inserting rows into table ------>
INSERT INTO <table name>(coloumn name1,coloumn name2,coloumn name3) VALUES(value1,value2,value3)


<----------selecting from table-------->
	<--- * selects all the columns---->
	SELECT * FROM <table name> 

	<------selecting specific columns----->
	SELECT <coloumn name1,coloumn name2,coloumn name3> FROM <table name> 

	<----selecting values with same starting or ending or in b/w char----->
	SELECT <coloumn name or *> FROM <table name> WHERE <column name> LIKE '<alphabet/word>%'; //all the values with first letter as <alphabet/word>
	SELECT <coloumn name or *> FROM <table name> WHERE <column name> LIKE '%<alphabet/word>'; //all the values with end letter as <alphabet/word>
	SELECT <coloumn name or *> FROM <table name> WHERE <column name> LIKE '%<alphabet/word>%'; //all the values with <alphabet/word> in between the word
	
	<-----select values in between a range---->
	SELECT <coloumn name or *> FROM <table name> WHERE <column name> BETWEEN <value1> AND <value2>; //value can be char or number
	SELECT <coloumn name or *> FROM <table name> WHERE <column name> BETWEEN <value1> AND <value2> AND/OR <coloumn name><condition><value>; //for values in between va;ue1 and value2 and/or also checking the condi 
	
	<------when have the same char except some---->
	SELECT <coloumn name or *> FROM <table name> WHERE <coloumn name> LIKE '<value with _>'; 
		to select name such as seven and se7en
			LIKE se_en;

<------limit---------->
SELECT * FROM <table name> LIMIT <number> //to limit the output to "number" of records

<-----update----->
UPDATE <table name> SET <which coloumn> = <vaule> WHERE <coloumn> = <value>; 

<---------altering table-------->
			<---adding coloumns---->
			ALTER TABLE <table name> ADD COLUMN <coloumn name> <datatype>;  //initializes the coloumn values to null have to be updated

			<---deleting coloums----->
			DELETE FROM <table name> WHERE <coloumn name> <condition> <value>; 
			//for checking null condition
			DELETE FROM <table name> WHERE <coloumn name> IS(or NOT) NULL;
			
			<----renaming coloumns------>
			SELECT <coloumn name> AS '<new coloumn name>' FROM <table name>;

<---to find all the individual/distinct values in a table----->
SELECT DISTINCT <coloumn name> 
FROM <table name>;
//output with and with out distinct condition
	table content -->
		good
		good
		bad
		bad
	output---->
		with out-->		with--->
			good			good
            good			bad
			bad
			bad
			

<---------searching for single row or a list of rows--------->
SELECT <coloumn name or *> FROM <table> WHERE <coloumn name> <condition> <value>;

<--------ordering------>
SELECT * FROM <table name> ORDER BY <coloumn name>;
SELECT * FROM <table name> ORDER BY <coloumn name> DESC/ASC;
SELECT * FROM <table name> ORDER BY <coloumn name> DESC/ASC LIMIT <number>; //to show "numbner of outputs"

<-------------if-else/ case--------------->
SELECT <coloumn name>,
 CASE
  WHEN <coloumn name1> <condition> <value> THEN <value1>
  WHEN <coloumn name2> <condition> <value> THEN <value2>
  ELSE <value>
 END AS <name for the generated column>
FROM <table name>;

<----------count---------->
SELECT COUNT(<*/coloumn name>) FROM <table name>

<----------sum---------->
SELECT SUM(<coloumn name>) FROM <table name>

<----------MIN/MAX---------->
SELECT MIN/MAX(<coloumn name>) FROM <table name>

<-----------mean------------->
SELECT AVG(<coloumn name>) FROM <table name>

<-----------round---------->
SELECT ROUND(<coloumn name>,<number of decimal places>) FROM <table name>


<--------------------group by---------------->
SELECT <coloumn name > FROM <table name> GROUP BY <coloumn name>;  //group by the values of coloumn name

<--------having------->
//comes after the groupby
SELECT <coloumn name> FROM <table name> GROUP BY <coloumn name> HAVING <statment><condition><value>;


