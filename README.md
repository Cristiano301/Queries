# Queries
`select Atendentes_distintos, count(distinct CustomerID) as Clientes_distintos
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
`
![Codigo](https://snipboard.io/NIYfST.jpg)
![Resultado](https://raw.githubusercontent.com/Cristiano301/Queries/master/Prints%20imagens/Resultado.JPG)
[Site do projeto](https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all)
