/*

����� ����� ��������� ������� ������ ���������. ������ ����� �������� ������ ��� �� ������ ��������� ���������. �������� � ��������� ����� �� ������� ������ ������������ � �������:
Income_o(point, date, inc)
��������� ������ �������� (point, date). ��� ���� � ������� date ������������ ������ ���� (��� �������), �.�. ����� ����� (inc) �� ������ ������ ������������ �� ���� ������ ���� � ����. �������� � ������ ����� ��������� ��������� ������������ � �������:
Outcome_o(point, date, out)
� ���� ������� ����� ��������� ���� (point, date) ����������� ���������� ������� ������ � �������� ������� (out) �� ���� ������ ���� � ����.
� ������, ����� ������ � ������ ����� ����� ������������� ��������� ��� � ����, ������������ ������ ����� � ���������, �������� ��������� ���� code:
Income(code, point, date, inc)
Outcome(code, point, date, out)
����� ����� �������� ������� date �� �������� �������.


�������: 29 (Serge I: 2003-02-14)
� �������������, ��� ������ � ������ ����� �� ������ ������ ������ ����������� �� ���� ������ ���� � ���� [�.�. ��������� ���� (�����, ����)], �������� ������ � ��������� ������� (�����, ����, ������, ������). ������������ ������� Income_o � Outcome_o.
*/

with temporary as
(select income.point, income.date 
from income_o income
union
select outcome.point , outcome.date as outdate
from outcome_o outcome
)
select temporary.point, temporary.date, income_o.inc, outcome_o.out from temporary
left join income_o
on temporary.point = income_o.point
and temporary.date = income_o.date
left join outcome_o
on temporary.point = outcome_o.point
and temporary.date = outcome_o.date
