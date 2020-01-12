# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 没有参数类型声明的方法。
sum3(a, b) = a + b

# 拥有参数化的参数类型声明的方法。
sum3(a::T, b::T) where {T <: Number} = a + b

# 拥有参数化的结果声明的方法。
function sum3(a::T, b::T)::T where {T <: Number}
    print("[sum3(a::T, b::T)::T where {T <: Number}] ")
    a + b
end

println("methods(sum3) -> $(methods(sum3))")
println("sum3(1, 2) -> $(sum3(1, 2))\n")


op1 = Dict("a" => 1, "b" => 2, "c" => 3); op2 = 10;
println("op1 -> $(op1)")
println("op2 -> $(op2)\n")

function add_value!(d::Dict{K,V}, v::V)::Dict{K,V} where {K} where {V <: Number}
    for (key, num) in d
        d[key] = num + v
    end
    d
end

println("add_value!(op1, op2) -> $(add_value!(op1, op2))\n")
