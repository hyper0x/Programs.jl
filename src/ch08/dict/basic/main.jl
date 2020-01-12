# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 自定义的键类型。
mutable struct MyKey
    code::String
    sn::Int128
end

key1 = MyKey("mykey", 1); println("Key 1: $(key1)")
key2 = MyKey("mykey", 1); println("Key 2: $(key2)\n")


println("key1 == key2 -> ", key1 == key2)
println("isequal(key1, key2) -> ", isequal(key1, key2), "\n")

# 下面为 MyKey 类型定义 == 方法。
import Base.==
==(x::MyKey, y::MyKey) = x.code == y.code && x.sn == y.sn

println("key1 == key2 -> ", key1 == key2)
println("isequal(key1, key2) -> ", isequal(key1, key2), "\n")


println("hash(key1) == hash(key2) -> ", hash(key1) == hash(key2), "\n")

# 下面为 MyKey 类型定义 hash 方法。
import Base.hash
hash(k::MyKey, h::UInt) = hash(k.sn, hash(k.code, h))

println("hash(key1) == hash(key2) -> ", hash(key1) == hash(key2), "\n\n")


println("Change the value of the field sn in key2 to 2...")
key2.sn = 2
dict1 = Dict{MyKey, Int64}()
dict1[key1] = 10; dict1[key2] = 20
println("Dict 1: $(dict1)\n")

judge1(key, has) = 
    "Is there a key $(key) in the dictionary dict1? $(has)"

println(judge1(key1, haskey(dict1, key1)))
println(judge1(key2, haskey(dict1, key2)), "\n")

println("Change the value of the field sn in key1 to 2...")
key1.sn = 2
println(judge1(key1, haskey(dict1, key1)), "\n")

println("Change the value of the field sn in key2 to 3...")
key2.sn = 3
println(judge1(key2, haskey(dict1, key2)), "\n\n")


# 构造字典的几种方式。
println("The dict (1): ", Dict([(1, "a"), (2, "b"), (3, "c")]))
println("The dict (2): ", Dict([[1, "d"], [2, "e"], [3, "f"]]))
println("The dict (3): ", Dict(([1, "i"], [2, "j"], [3, "k"])))
println("The dict (4): ", Dict(1=>"x", 2=>"y", 3=>"z"), "\n")

pair1 = 1=>"u"
println("The pair (1): $(pair1) (type: $(typeof(pair1)))")
pair2 = Pair(1, "v")
println("The pair (2): $(pair2) (type: $(typeof(pair2)))\n")
