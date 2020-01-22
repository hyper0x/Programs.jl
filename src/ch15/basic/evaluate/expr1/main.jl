# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

code1 = """greeting = "Hey, Julia!" """
println("Code 1: $(code1)")
println("Parse code 1...")
expr1 = Meta.parse(code1)
println("Evaluate expression 1...")
eval(expr1)
println("The value of global variable `greeting` in module `Main`: $(greeting)\n")


module MyMod

function greet()
    code1_2 = """greeting2 = "Hey, Julia!" """
    println("Code 1_2: $(code1_2)")
    println("Parse & evaluate code 1_2...")
    eval(Meta.parse(code1_2))
end

end

println("Call MyMod.greet()...")
MyMod.greet()
println("The value of global variable `greeting2` in module `MyMod`: $(MyMod.greeting2)")
