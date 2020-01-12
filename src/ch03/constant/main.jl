# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

const A = 2020
println("Constant A: $(A)")
A = 2050 #= 这里会引发警告。 =#
println("Constant A: $(A) (redefined)\n")

b = 2070
println("Variable b: $(b)")
A = b #= 这里会引发警告。 =#
println("Constant A: $(A) (redefined)\n")

const C = 2020
println("Constant C: $(C)")
f() = C + 30
println("Invoke function f about C: $(f())")
C = 2030
println("Constant C: $(C) (redefined)")
println("Invoke function f about C: $(f())\n")

# C = "2020"  #= 这里会报错。 =#

const D = "2020"
println("Constant D: $(D)")
D = "2020"
println("Constant D: $(D) (redefined)")
d = "2020"
println("Variable d: $(d)")
D = d
println("Constant D: $(D) (redefined)")
