# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

module MyMod2

function greet()
    code1_3 = """greeting3 = "Hey, Julia!" """
    println("Code 1_3: $(code1_3)")
    println("Parse & evaluate code 1_3...")
    Core.eval(Main, Meta.parse(code1_3))
end

end

println("Call MyMod2.greet()...")
MyMod2.greet()
println("The value of global variable `greeting3` in module `Main`: $(greeting3)")
