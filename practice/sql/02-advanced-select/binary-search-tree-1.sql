-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem
-- Binary Tree Nodes

select
    n,
    case
        when p is null then 'Root'
        when refrence = 0 then 'Leaf'
        else 'Inner'
    end
from (
    select *, (select count(*) from BST as innertbl where innertbl.p = BST.n) as refrence
    from BST
    order by n
) as t1