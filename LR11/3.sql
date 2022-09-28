USE ��11;

declare @point varchar(32);

begin try
	begin tran                           
		set @point = 'p1'; 
		save tran @point;  -- ����������� ����� p1
		insert STUDENT(IDGROUP, NAME, BDAY, INFO, FOTO) values
		                      (20,'���������', '1997-08-02', NULL, NULL),
							  (20,'����������', '1997-08-06', NULL, NULL),
							  (20,'���������', '1997-08-01', NULL, NULL),
							  (20,'�����', '1997-08-03', NULL, NULL);    
		set @point = 'p2'; 
		save tran @point; -- ����������� ����� p2
		insert STUDENT(IDGROUP, NAME, BDAY, INFO, FOTO) values
							  (20, '��������� �������', '1997-08-02', NULL, NULL); 
	commit tran;                                              
end try

begin catch
	print '������: '+ case 
		when error_number() = 2627 and patindex('%STUDENT_PK%', error_message()) > 0 then '������������ ��������' 
		else '����������� ������: '+ cast(error_number() as  varchar(5)) + error_message()  
	end; 
    if @@trancount > 0 -- ���� ���������� �� ���������
	begin
	   print '����������� �����: '+ @point;
	   rollback tran @point; -- ����� � ��������� �����.�����
	   commit tran; -- �������� ���������, ������ �� �����.����� 
	end;     
end catch;

select * from STUDENT where IDGROUP=20; 
delete STUDENT where IDGROUP=20; 