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


�������: 30 (Serge I: 2003-02-14)
� �������������, ��� ������ � ������ ����� �� ������ ������ ������ ����������� ������������ ����� ��� (��������� ������ � �������� �������� ������� code), ��������� �������� �������, � ������� ������� ������ �� ������ ���� ���������� �������� ����� ��������������� ���� ������.
�����: point, date, ��������� ������ ������ �� ���� (out), ��������� ������ ������ �� ���� (inc). ������������� �������� ������� ��������������� (NULL).
*/

with Income_table as (
select income.point, income.date, sum(income.inc) as income from income
group by income.point, income.date
),
outcome_table as (
select outcome.point, outcome.date, sum(outcome.out) as outcome from outcome
group by outcome.point, outcome.date
)
select distinct income_table.point, income_table.date, outcome_table.outcome, income_table.income from income_table
left join outcome_table
on income_table.point = outcome_table.point
and income_table.date = outcome_table.date
union
select distinct outcome_table.point, outcome_table.date, outcome_table.outcome, income_table.income from outcome_table
left join income_table
on income_table.point = outcome_table.point
and income_table.date = outcome_table.date

