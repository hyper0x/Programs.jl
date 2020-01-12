# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

array2d = [[1,2,3,4,5] [6,7,8,9,10] [11,12,13,14,15] [16,17,18,19,20] [21,22,23,24,25] [26,27,28,29,30]]
println("The array named array2d: $(array2d) ($(summary(array2d)))\n")

println("Iterate array2d:")
for e in array2d
    print("$(e)\t")
end
println("\n")

println("Iterate eachindex(array2d):")
for i in eachindex(array2d)
    print("$(i): $(array2d[i])\t")
end
println("\n")

println("Iterate pairs(array2d):")
for (i, v) in pairs(array2d)
    print("$(i): $(v)\t")
end
println("\n\n")

temp_result = pairs(IndexStyle(array2d), array2d)
println("pairs(IndexStyle(array2d), array2d) -> $(temp_result) ($(summary(array2d)))\n")

temp_result = pairs(IndexCartesian(), array2d)
println("pairs(IndexCartesian(), array2d) -> $(temp_result) ($(summary(array2d)))\n")

