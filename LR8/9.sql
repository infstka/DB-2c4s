USE ��8;

print 'Query 9'
begin TRY
	update PROGRESS set NOTE='5'
			where NOTE='6'
end TRY
begin CATCH
	print ERROR_NUMBER()	--��� ��������� ������
	print ERROR_MESSAGE()	--��������� �� ������
	print ERROR_LINE()		--��� ��������� ������
	print ERROR_PROCEDURE()	--��� ��������� ��� NULL
	print ERROR_SEVERITY()	--������� ����������� ������
	print ERROR_STATE()		--����� ������
end CATCH