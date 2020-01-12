# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

x = "Python";

# let 语句与局部变量（1）。
let x = "Julia", y = "Golang"
    println("$x, $y")
end
println("\n")

# let 语句与局部变量（2）。
let x = x, y = "Golang"
    println("$x, $y")
end
println("\n")

# 不设置局部变量的 let 语句。
let  
    y = "Golang"
    println("$x, $y")
end
println("")