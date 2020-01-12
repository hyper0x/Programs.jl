# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 拥有两个位置参数的方法。
function map1(f::Function, vec::Vector)
    [f(e) for e in vec]
end

println("methods(map1) -> $(methods(map1))")
println("map1(e->e*10, [1,2,3,4]) -> $(map1(e->e * 10, [1,2,3,4]))")

result1 = map1([1,2,3,4]) do x
    x * 10
end

println("""map1([1,2,3,4]) do x
    x * 10
end 
-> $(result1)\n""")

# 拥有三个位置参数的方法。
function map1(f::Function, vec::Vector, extra)
    [f((e, extra)) for e in vec]
end

println("methods(map1) -> $(methods(map1))")

result2 = map1([1,2,3,4], 1) do (x, y)
    x * 10 + y
end

println("""map1([1,2,3,4], 1) do (x, y)
    x * 10 + y
end
-> $(result2)\n""")
