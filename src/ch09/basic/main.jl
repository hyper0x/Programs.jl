# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

array2d = [[1,2,3,4,5] [6,7,8,9,10] [11,12,13,14,15] [16,17,18,19,20] [21,22,23,24,25] [26,27,28,29,30]]
println("The array named array2d: $(array2d)\n")

println("The element type of array2d: $(eltype(array2d))")
println("The dimensions of array2d: $(ndims(array2d))")
println("The length of array2d: $(length(array2d))")
println("The size of array2d: $(size(array2d))\n")

println("The summary for array2d: $(summary(array2d))\n")