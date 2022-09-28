USE Ћ–10;

DECLARE  @t int, @rn char(50);  

DECLARE ScrollCur CURSOR LOCAL DYNAMIC SCROLL for 
		SELECT row_number() over (order by NAME), NAME from STUDENT where IDGROUP = 6 
OPEN ScrollCur;
	fetch FIRST from ScrollCur into  @t, @rn;                 
		print 'перва€ строка: ' + cast(@t as varchar(3))+ ' ' + rtrim(@rn);
	fetch NEXT from ScrollCur into  @t, @rn;                 
		print 'следующа€ строка: ' + cast(@t as varchar(3))+ ' ' + rtrim(@rn);      
	fetch LAST from  ScrollCur into @t, @rn;       
		print 'последн€€ строка: ' +  cast(@t as varchar(3))+ ' '+rtrim(@rn);   
	fetch PRIOR from ScrollCur into  @t, @rn;         --пред от текущей  
		print 'предпоследн€€ строка: ' + cast(@t as varchar(3))+ ' ' + rtrim(@rn); 
	fetch ABSOLUTE 2 from ScrollCur into  @t, @rn;    -- от начала             
		print 'втора€ строка: ' + cast(@t as varchar(3))+ ' ' + rtrim(@rn); 
	fetch RELATIVE 1 from ScrollCur into  @t, @rn;    -- от текущей          
		print 'треть€ строка: ' + cast(@t as varchar(3))+ ' ' + rtrim(@rn);         
CLOSE ScrollCur;