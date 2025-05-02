/*
Имеется выборка рандомных значений от 1 до 100.
Необходимо подсчитать сколько раз встречается каждое значение.
*/

use [Ionov Test DataBase];

-- создаем таблицу для подсчета значений
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

-- Создаем таблицу с рандомными значениями
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

-- получаем итоговые значения
select num, count(random_num) as quantity
from generatednumbers as t1
left join RandomNumbers as t2
on t1.num = t2.Random_Num
group by t1.num
