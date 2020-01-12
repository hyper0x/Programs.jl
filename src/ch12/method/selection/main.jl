# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 第 1 个方法。
function sum2(a::Integer, b::Integer)
    print("[sum2(a::Integer, b::Integer)] ")
    a + b
end

# 第 2 个方法。
function sum2(a::Integer, b::Integer, c::Integer)
    print("[sum2(a::Integer, b::Integer, c::Integer)] ")
    a + b + c
end

println("methods(sum2) -> $(methods(sum2))")
println("sum2(1, 2) -> $(sum2(1, 2))\n")

# 第 3 个方法。
function sum2(a::Integer, b::Int)
    print("[sum2(a::Integer, b::Int)] ")
    a + b
end

println("methods(sum2) -> $(methods(sum2))")
println("sum2(1, 2) -> $(sum2(1, 2))\n")

# 第 4 个方法。
function sum2(a::Int, b::Integer)
    print("[sum2(a::Int, b::Integer)] ")
    a + b
end

try 
    println("methods(sum2) -> $(methods(sum2))")
    print("sum2(1, 2) -> ")
    println(sum2(1, 2))
catch e
    showerror(stdout, e)
    println("\n")
end

# 第 5 个方法。
function sum2(a::Int, b::Int)
    print("[sum2(a::Int, b::Int)] ")
    a + b
end

println("methods(sum2) -> $(methods(sum2))")
println("sum2(1, 2) -> $(sum2(1, 2))\n")

try 
    print("sum2(2, 3.2) -> ")
    println(sum2(2, 3.2))
catch e
    showerror(stdout, e)
    println("\n")
end

# 第 6 个方法。
function sum2(a::Number, b::Number)
    print("[sum2(a::Number, b::Number)] ")
    a + b
end

println("methods(sum2) -> $(methods(sum2))")
println("sum2(2, 3.2) -> $(sum2(2, 3.2))\n")

# 第 7 个方法。
function sum2(a::Integer, b::Integer, c::Integer = 0)
    print("[sum2(a::Integer, b::Integer, c::Integer=0)] ")
    a + b + c
end

println("methods(sum2) -> $(methods(sum2))")
println("sum2(Int8(1), Int8(2)) -> $(sum2(Int8(1), Int8(2)))\n")
