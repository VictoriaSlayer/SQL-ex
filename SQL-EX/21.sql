/*

����� �� ������� �� ������� ������:
Product(maker, model, type)
PC(code, model, speed, ram, hd, cd, price)
Laptop(code, model, speed, ram, hd, price, screen)
Printer(code, model, color, type, price)
������� Product ������������ ������������� (maker), ����� ������ (model) � ��� ('PC' - ��, 'Laptop' - ��-������� ��� 'Printer' - �������). ��������������, ��� ������ ������� � ������� Product ��������� ��� ���� �������������� � ����� ���������. � ������� PC ��� ������� ��, ���������� ������������� ���������� ����� � code, ������� ������ � model (������� ���� � ������� Product), �������� - speed (���������� � ����������), ����� ������ - ram (� ����������), ������ ����� - hd (� ����������), �������� ������������ ���������� - cd (��������, '4x') � ���� - price (� ��������). ������� Laptop ���������� ������� �� �� ����������� ����, ��� ������ �������� CD �������� ������ ������ -screen (� ������). � ������� Printer ��� ������ ������ �������� �����������, �������� �� �� ������� - color ('y', ���� �������), ��� �������� - type (�������� � 'Laser', �������� � 'Jet' ��� ��������� � 'Matrix') � ���� - price./*

�������: 21 (Serge I: 2003-02-13)
������� ������������ ���� ��, ����������� ������ ��������������, � �������� ���� ������ � ������� PC.
�������: maker, ������������ ����.

*/

select pr.maker, max(pc.price) price from product pr
join pc
on pr.model = pc.model
group by maker
