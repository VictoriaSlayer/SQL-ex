/*

����� �� ������� �� ������� ������:
Product(maker, model, type)
PC(code, model, speed, ram, hd, cd, price)
Laptop(code, model, speed, ram, hd, price, screen)
Printer(code, model, color, type, price)
������� Product ������������ ������������� (maker), ����� ������ (model) � ��� ('PC' - ��, 'Laptop' - ��-������� ��� 'Printer' - �������). ��������������, ��� ������ ������� � ������� Product ��������� ��� ���� �������������� � ����� ���������. � ������� PC ��� ������� ��, ���������� ������������� ���������� ����� � code, ������� ������ � model (������� ���� � ������� Product), �������� - speed (���������� � ����������), ����� ������ - ram (� ����������), ������ ����� - hd (� ����������), �������� ������������ ���������� - cd (��������, '4x') � ���� - price (� ��������). ������� Laptop ���������� ������� �� �� ����������� ����, ��� ������ �������� CD �������� ������ ������ -screen (� ������). � ������� Printer ��� ������ ������ �������� �����������, �������� �� �� ������� - color ('y', ���� �������), ��� �������� - type (�������� � 'Laser', �������� � 'Jet' ��� ��������� � 'Matrix') � ���� - price./*

�������: 26 (Serge I: 2003-02-14)
������� ������� ���� �� � ��-���������, ���������� �������������� A (��������� �����). �������: ���� ����� ������� ����.*/

with t as
(
select product.maker, pc.model, pc.price from pc
join product
on pc.model = product.model
where product.maker = 'A'
union all
select product.maker, laptop.model, laptop.price from laptop
join product
on laptop.model = product.model
where product.maker = 'A'
)
select avg(price) from t
