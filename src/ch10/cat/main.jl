# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

a1 = [1, 3, 5]; a2 = [2, 4, 6]; 
println("The array named a1: $(a1)")
println("The array named a2: $(a2)")
a3 = [7, 9, 11]; a4 = [8, 10, 12];
println("The array named a3: $(a3)")
println("The array named a4: $(a4)\n")

println("[a1; a2] -> $([a1; a2])")
println("[a1 a2] -> $([a1 a2])\n")

println("cat(a1, a2, dims=1) -> $(cat(a1, a2, dims = 1))")
println("cat(a1, a2, dims=2) -> $(cat(a1, a2, dims = 2))\n")

temp_result = cat(a1, a2, dims = 3) 
println("cat(a1, a2, dims=3) -> $(temp_result) ($(summary(temp_result)))\n")

temp_result = cat(a1, a2, dims = 4) 
println("cat(a1, a2, dims=4) -> $(temp_result) ($(summary(temp_result)))\n\n")


a13 = cat(a1, a3, dims = 2)
println("a13 = cat(a1, a3, dims=2)")
println("The array named a13: $(a13)\n")
a24 = cat(a2, a4, dims = 2)
println("a24 = cat(a2, a4, dims=2)")
println("The array named a13: $(a24)\n")

cat(a13, a24, dims = 4)
println("cat(a13, a24, dims=4)")
temp_result = cat(a13, a24, dims = 4)
println("cat(a13, a24, dims=4) -> $(temp_result) ($(summary(temp_result)))\n\n")


println("vcat(a1, a2) -> $(vcat(a1, a2))")
println("hcat(a1, a2) -> $(hcat(a1, a2))\n\n")


println("hvcat(3, a1...) -> $(hvcat(3, a1...))")
println("hvcat(3, a1, a2, a3) -> $(hvcat(3, a1, a2, a3))")
println("hvcat((3),  a1, a2, a3) -> $(hvcat((3),  a1, a2, a3))\n")

println("hvcat((3,3), a1, a2, a3, a1, a2, a3) -> ", 
        hvcat((3, 3), a1, a2, a3, a1, a2, a3))
println("hvcat(3, a1, a2, a3, a1, a2, a3) -> ", 
        hvcat(3, a1, a2, a3, a1, a2, a3), "\n")
