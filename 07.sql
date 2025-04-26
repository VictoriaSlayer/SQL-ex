/*
����� �� ������� �� ������� ������:
Product(maker, model, type)
PC(code, model, speed, ram, hd, cd, price)
Laptop(code, model, speed, ram, hd, price, screen)
Printer(code, model, color, type, price)
������� Product ������������ ������������� (maker), ����� ������ (model) � ��� ('PC' - ��, 'Laptop' - ��-������� ��� 'Printer' - �������). 
��������������, ��� ������ ������� � ������� Product ��������� ��� ���� �������������� � ����� ���������.
� ������� PC ��� ������� ��, ���������� ������������� ���������� ����� � code, ������� ������ � model (������� ���� � ������� Product),
�������� - speed (���������� � ����������), ����� ������ - ram (� ����������), ������ ����� - hd (� ����������),
�������� ������������ ���������� - cd (��������, '4x') � ���� - price (� ��������).
������� Laptop ���������� ������� �� �� ����������� ����, ��� ������ �������� CD �������� ������ ������ -screen (� ������).
� ������� Printer ��� ������ ������ �������� �����������, �������� �� �� ������� - color ('y', ���� �������),
��� �������� - type (�������� � 'Laser', �������� � 'Jet' ��� ��������� � 'Matrix') � ���� - price.
*/

/*
�������: 7 (Serge I: 2002-11-02)
������� ������ ������� � ���� ���� ��������� � ������� ��������� (������ ����) ������������� B (��������� �����).

*/

select distinct pr.model, pc.price from product pr
join pc pc
on pr.model = pc.model
where pr.maker = 'B'
union
select distinct pr.model, lp.price from product pr
join laptop lp
on pr.model = lp.model
where pr.maker = 'B'
union
select distinct pr.model, pri.price from product pr
join printer pri
on pr.model = pri.model
where pr.maker = 'B'
