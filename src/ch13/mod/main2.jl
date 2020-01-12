# 示例的第二个演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

include("Calculator.jl")
using .Calculator

println(sum1(1, 2))
println(square1(3))
# println(version1) #= 这里会报错。 =#
println(Calculator.version1)
println(Calculator.sum1(4, 5))
println(Calculator.square1(6))

# Calculator.version1 = v"0.2.0" #= 这里会报错。 =#
