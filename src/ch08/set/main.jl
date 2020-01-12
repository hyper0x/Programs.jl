# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 构造集合。
println("The set (1): $(Set([1, 2, 4]))")
println("The set (1): $(Set((1, 2, 4)))")
println("The set (2): $(Set(Dict(1 => "x", 2 => "y", 4 => "z")))")
println("The set (1): $(Set((1, 2.0, "4")))\n\n")


# 操作集合。
set1 = Set([1, 2, 3])
println("Set 1: $(set1)")
set2 = Set([2, 3, 4])
println("Set 2: $(set2)")
set3 = Set([3, 4, 5])
println("Set 3: $(set3)")
set4 = Set([4, 5, 6])
println("Set 4: $(set4)\n")

println("union with set1, set2 and set3: ", union(set1, set2, set3))
println("intersect with set1, set2 and set3: ", intersect(set1, set2, set3))
println("setdiff with set1, set2 and set3: ", setdiff(set1, set2, set3))
println("setdiff with set2, set1 and set3: ", setdiff(set2, set1, set3))
println("setdiff with set3, set1 and set1: ", setdiff(set3, set2, set1))
println("symdiff with set1 and set2: ", symdiff(set1, set2))
println("symdiff with set1, set2 and set3: ", symdiff(set1, set2, set3))
println("symdiff with set1, set2, set3 and set4: ", symdiff(set1, set2, set3, set4), "\n")
