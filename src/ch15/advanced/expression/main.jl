# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

eval(Expr(:(=), :greeting4_1, "Hey, Julia!"))
println("greeting4_1 -> $greeting4_1")

eval(Expr(Symbol("="), :greeting4_2, "Hey, Julia!"))
println("greeting4_2 -> $greeting4_2")

eval(Expr(Symbol("="), Symbol("greeting4", "_3"), "Hey, Julia!"))
println("greeting4_3 -> $greeting4_3")

eval(Expr(Symbol("="), Symbol("greeting4#4"), "Hey, Julia!"))
println("greeting4#4 -> $(var"greeting4#4")")

eval(:(greeting4_5 = "Hey, Julia!"))
println("greeting4_5 -> $greeting4_5 \n")


e1 = 1.2; e2 = 1 // 3;
expr3_1 = :((e1 + 2.3) * e2)
println("$expr3_1 -> $(eval(expr3_1)) \n")

expr3_2 = :(e1 = 1.2; e2 = 1 // 3; (e1 + 2.3) * e2)
println("$expr3_2 -> $(eval(expr3_2)) \n")

expr3_3 = quote
    e1 = 1.2
    e2 = 1 // 3
    (e1 + 2.3) * e2
end
println("$expr3_3 -> $(eval(expr3_3))")
