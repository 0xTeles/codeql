import go

from IfStmt i
where not i.getThen().getAStmt() instanceof ReturnStmt
select i