/*
������� ������� ��������� �������� �� 1 �� 100.
���������� ���������� ������� ��� ����������� ������ ��������.
*/

use [Ionov Test DataBase];

-- ������� ������� ��� �������� ��������
drop table if exists GeneratedNumbers;
create table GeneratedNumbers (
num int 
)
go 

declare @i int = 1;
while @i <= 100
begin
	insert into GeneratedNumbers
	(num)
	values 
	(@i);
	set @i = @i + 1;
end;

go

-- ������� ������� � ���������� ����������
drop table if exists RandomNumbers
create table RandomNumbers (
"Random_Num" int 
)
declare @i int = 0;
while @i < 100
begin
	insert into RandomNumbers 
	(Random_Num)
	values (floor(rand()*100) + 1);
set @i = @i + 1;
end

-- �������� �������� ��������
select num, count(random_num) as quantity
from generatednumbers as t1
left join RandomNumbers as t2
on t1.num = t2.Random_Num
group by t1.num
