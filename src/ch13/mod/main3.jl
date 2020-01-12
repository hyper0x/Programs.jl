# 示例的第二个演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

include("Calculator.jl")
using .Calculator: version1, sum1

println(version1)
println(sum1(7, 8))
# println(square1(9)) #= 这里会报错。 =#

# 下面这句之所以合法，是因为`include("Calculator.jl")`。
# 它相当于把`Calculator.jl`文件中的代码复制、黏贴到了当前文件中。
# 这使得我们不用显式地引入就可以在当前模块中通过限定名引用到`Calculator`模块中的全局程序定义。
println(Calculator.square1(9))
