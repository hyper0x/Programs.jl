# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 泛化函数的定义。
function sum1 end

# 没有参数类型声明的方法。
function sum1(a, b)
    a + b
end

# 拥有参数类型声明的方法。
function sum1(a::Number, b::Number)
    a + b
end

# 拥有关键字参数的方法。
function sum1(a::Number, b::Number; print::Bool)
    res = a + b
    if print
        println("$a + $b = $res")
    end
    res
end

println("methods(sum1) -> $(methods(sum1))\n")

# 拥有结果声明的方法。
function sum1(a::Number, b::Number; print::Bool = false)::String
    res = a + b
    if print
        println("$a + $b = $res")
    end
    "$res"
end

println("methods(sum1) -> $(methods(sum1))\n")
