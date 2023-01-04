select Atendentes_distintos, count(distinct CustomerID) as qtde_clientes
from
(
select CustomerID, count(distinct EmployeeID) as Atendentes_distintos
from orders
where OrderDate between '1997-01-01' and '1997-12-31'
group by 1
order by 1
)
group by 1
order by 1
