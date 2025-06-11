/*

����� �� ������� �� ������� ������:
Product(maker, model, type)
PC(code, model, speed, ram, hd, cd, price)
Laptop(code, model, speed, ram, hd, price, screen)
Printer(code, model, color, type, price)
������� Product ������������ ������������� (maker), ����� ������ (model) � ��� ('PC' - ��, 'Laptop' - ��-������� ��� 'Printer' - �������). ��������������, ��� ������ ������� � ������� Product ��������� ��� ���� �������������� � ����� ���������. � ������� PC ��� ������� ��, ���������� ������������� ���������� ����� � code, ������� ������ � model (������� ���� � ������� Product), �������� - speed (���������� � ����������), ����� ������ - ram (� ����������), ������ ����� - hd (� ����������), �������� ������������ ���������� - cd (��������, '4x') � ���� - price (� ��������). ������� Laptop ���������� ������� �� �� ����������� ����, ��� ������ �������� CD �������� ������ ������ -screen (� ������). � ������� Printer ��� ������ ������ �������� �����������, �������� �� �� ������� - color ('y', ���� �������), ��� �������� - type (�������� � 'Laser', �������� � 'Jet' ��� ��������� � 'Matrix') � ���� - price./*

�������: 18 (Serge I: 2003-02-03)
������� �������������� ����� ������� ������� ���������. �������: maker, price


*/

select distinct product.maker, printer.price from product
join printer
on product.model = printer.model
where printer.price = 
(select min(printer.price) price from printer
where printer.color = 'y')
and printer.color = 'y'
