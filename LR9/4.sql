USE tempdb;

SELECT ID from #QUERY3LR9 where ID between 5000 and 19999; 
SELECT ID from  #QUERY3LR9 where ID>15000 and  ID < 20000  
SELECT ID from  #QUERY3LR9 where ID=17000

CREATE  index #temp_table_WHERE on #QUERY3LR9(ID) where (ID>15000 and 
ID  < 20000);
drop index #QUERY3LR9_WHERE on #QUERY3LR9