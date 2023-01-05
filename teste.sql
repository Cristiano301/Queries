with Clientes1996nov as
(select distinct customerid
from orders
where orderdate between '1996-11-01' and '1996-11-30'
),
Clientes1996dez as
(select distinct customerid
from orders
where orderdate between '1996-12-01' and '1996-12-31'
),
Clientes1997jan as
(select distinct customerid
from orders
where orderdate between '1997-01-01' and '1997-01-31'
),
Clientes1997fev as
(select distinct customerid
from orders
where orderdate between '1997-02-01' and '1997-02-28'
),
Clientes1997mar as
(select distinct customerid
from orders
where orderdate between '1997-03-01' and '1997-03-31'
),
Base as
(select count(distinct customerid) as M
from clientes1996nov
),
M1 as
(select count(distinct a.customerid) as M1
from clientes1996nov a 
inner join clientes1996dez b on a.customerid = b.customerid
),
M2 AS 
(select count(distinct a.customerid) as M2
from clientes1996nov a
inner join clientes1997jan b on a.customerid = b.customerid
),
M3 as
(select count(distinct a.customerid) as M3
From clientes1996nov a 
inner join clientes1997fev b on a.customerid = b.customerid
),
M4 as
(select count(distinct a.customerid) as M4
from clientes1996nov a
inner join clientes1997mar b on a.customerid = b.customerid
)
select *
from Base, M1,M2,M3,M4





















