"""Curso SQL para Profissionais Analíticos"""

--Refazer o exercício de distribuição de atendentes distintos por clientes para o ano de 1997, utilizando group by dentro de group by

--Codigo da reposta:
select Atendentes_distintos, count(distinct CustomerID) as Clientes_distintos-- 2° Utiliza atendentes distintos feito no 1° group by e gera a contagem para Clientes-Distintos.
from
(
select CustomerID, count(distinct EmployeeID) as Atendentes_distintos -- 1° Contagem distinta de atendentes para clientes.
from orders
where OrderDate between '1997-01-01' and '1997-12-31'
group by 1 -- Esse group by na posição 1 agrupa por clienteID
order by 1
)
group by 1--Agrupa Atendentes_distintos
order by 1
