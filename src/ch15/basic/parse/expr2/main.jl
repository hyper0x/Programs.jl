# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

code2 = "(a + 2.3) * b"
expr2 = Meta.parse(code2)
println("Expression 2: $(expr2) (type: $(typeof(expr2)))\n")

println("The head of expression 2: $(expr2.head) (type: $(typeof(expr2.head)))")
println("The arguments of expression 2: $(expr2.args) (type: $(typeof(expr2.args)))\n")

subexpr = expr2.args[2]
println("The subexpression: $(subexpr) (type: $(typeof(subexpr)))")
println("The head of subexpression: $(subexpr.head) (type: $(typeof(subexpr.head)))")
println("The arguments of subexpression: $(subexpr.args) (type: $(typeof(subexpr.args)))\n")

println("Dump expression 2:")
dump(expr2)