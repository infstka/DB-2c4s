USE LR3;
--ALTER Table Student ADD Дата_поступления date;
ALTER Table Student DROP Column Дата_поступления;
SELECT *From Student;