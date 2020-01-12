# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 拥有可选参数的函数。
function map1(vec::Vector, f = identity)
    [f(e) for e in vec]
end

println("map1([1,2,3,4]) -> $(map1([1,2,3,4]))")
println("map1([1,2,3,4], (e)->e*10) -> $(map1([1,2,3,4], (e)->e * 10))\n")

# 拥有关键字参数的函数。
function map2(vec::Vector; f = identity)
    [f(e) for e in vec]
end

println("map2([1,2,3,4]; f=(e)->e*10) -> $(map2([1,2,3,4]; f = (e)->e * 10))\n")

# 只拥有关键字参数的函数。
function map3(;vec::Vector, f = identity)
    [f(e) for e in vec]
end

println("map3(vec=[1,2,3,4], f=(e)->e*10) -> $(map3(vec = [1,2,3,4], f = (e)->e * 10))\n")

# 拥有可变参数的函数。
function map4(vec::Vector...; f = identity)
    [f(e...) for e in zip(vec...)]
end

println("map4([1,2,3,4], [10,20,30,40], [100,200,300,400]; f=+) -> $(map4([1,2,3,4], [10,20,30,40], [100,200,300,400]; f = +))")
println("""map4(['u','v','w'], ["x","y","z"]; f=*) -> $(map4(['u','v','w'], ["x","y","z"]; f = *))\n""")
