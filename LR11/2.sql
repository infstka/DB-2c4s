USE ��11;

begin try        
	begin tran                 -- ������  ����� ����������
		insert FACULTY values ('��', '��������� ������ ����');
	    insert FACULTY values ('���', '��������� print-����������');
	commit tran;               -- �������� ����������
end try

begin catch
	print '������: '+ case 
		when error_number() = 2627 and patindex('%FACULTY_PK%', error_message()) > 0 then '������������ '	--������� 1-�� ���������
		else '����������� ������: '+ cast(error_number() as  varchar(5))+ error_message()  
	end;
	if @@trancount > 0 rollback tran; -- ��.����������� ��.>0,  ����� �� ��������� 	  
end catch;
 
DELETE FACULTY WHERE FACULTY = '��';
DELETE FACULTY WHERE FACULTY = '���';

select * from FACULTY;