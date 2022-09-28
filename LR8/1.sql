use ЛР8;

DECLARE @c char ='a',
		@v varchar(4)='БГТУ',
		@d datetime,
		@t time,
		@i int,			--без иниц
		@s smallint,
		@ti tinyint,
		@n numeric(12,5);
SET @d=GETDATE();
SELECT @t='12:59:34.21';
SELECT @c c, @v v, @d d, @t t;
SELECT @s=345, @ti=1, @n=1234567.12345;
print 's='+cast(@s as varchar(10));
print 'ti='+cast(@ti as varchar(10));
print 'n='+cast(@n as varchar(13));