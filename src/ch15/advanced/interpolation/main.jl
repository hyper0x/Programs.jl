# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

exp1 = 3;
expr4 = :(((e3 + 2.3) * e4)^$exp1)
e3 = 1.2; e4 = 1 // 3;
println("$expr4 -> $(eval(expr4))")

expr5 = :(((e3 + 2.3) * e4)^$(e3 * e4))
println("$expr5 -> $(eval(expr5)) \n")

args = [1, 2, 3, 4];
println("args -> $(args)")

expr6 = :(println($(args...)))
# 对 expr6 的求值只会得到 nothing。
# 但是，在求值的过程中会打印出“1234”。
println("$expr6 -> $(eval(expr6))") 

println("args string -> $(args...)")
