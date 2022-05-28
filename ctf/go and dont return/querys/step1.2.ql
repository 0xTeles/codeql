import go

from OperatorExpr t
where t.(BinaryExpr).getRightOperand().toString() = "ErrNone"
select t