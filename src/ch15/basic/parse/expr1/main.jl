# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

code1 = """greeting = "Hey, Julia!" """
expr1 = Meta.parse(code1)
println("Expression 1: $(expr1) (type: $(typeof(expr1)))\n")

code_err1 = "greeting = 'Hey, Julia!'"
try
    Meta.parse(code_err1)
catch e
    println("ERROR: $(e) (code: $(code_err1))\n")
end

expr_err1 = Meta.parse(code_err1; raise = false)
println("Expression(ERROR): $(expr_err1)")