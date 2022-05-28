import go

from IfStmt s
where s.getCond().(EqualityTestExpr).getAnOperand().(Ident).getName() = "ErrNone"
select s //from https://securitylab.github.com/ctf/go-and-dont-return/answers/
