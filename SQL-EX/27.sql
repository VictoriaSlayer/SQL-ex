/*

����� �� ������� �� ������� ������:
Product(maker, model, type)
PC(code, model, speed, ram, hd, cd, price)
Laptop(code, model, speed, ram, hd, price, screen)
Printer(code, model, color, type, price)
������� Product ������������ ������������� (maker), ����� ������ (model) � ��� ('PC' - ��, 'Laptop' - ��-������� ��� 'Printer' - �������). ��������������, ��� ������ ������� � ������� Product ��������� ��� ���� �������������� � ����� ���������. � ������� PC ��� ������� ��, ���������� ������������� ���������� ����� � code, ������� ������ � model (������� ���� � ������� Product), �������� - speed (���������� � ����������), ����� ������ - ram (� ����������), ������ ����� - hd (� ����������), �������� ������������ ���������� - cd (��������, '4x') � ���� - price (� ��������). ������� Laptop ���������� ������� �� �� ����������� ����, ��� ������ �������� CD �������� ������ ������ -screen (� ������). � ������� Printer ��� ������ ������ �������� �����������, �������� �� �� ������� - color ('y', ���� �������), ��� �������� - type (�������� � 'Laser', �������� � 'Jet' ��� ��������� � 'Matrix') � ���� - price./*

�������: 27 (Serge I: 2003-02-03)
������� ������� ������ ����� �� ������� �� ��� ��������������, ������� ��������� � ��������. �������: maker, ������� ������ HD.

*/

select maker, avg(pc.hd) avg_hd from pc 
join product
on product.model=pc.model
where maker in
(select distinct maker from product where type = 'printer')
group by maker
