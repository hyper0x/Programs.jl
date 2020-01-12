# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 线性索引。
array2d = [[1,2,3,4,5] [6,7,8,9,10] [11,12,13,14,15] [16,17,18,19,20] [21,22,23,24,25] [26,27,28,29,30]]
println("The array named array2d: $(array2d) ($(summary(array2d)))\n")

temp_result1 = array2d[1]
println("array2d[1] -> $(temp_result1)")
temp_result1 = array2d[[1,3,5]]
println("array2d[[1,3,5]] -> $(temp_result1)")
temp_result1 = array2d[1:6]
println("array2d[1:6] -> $(temp_result1)\n\n")


# 笛卡尔索引。
println("array2d[CartesianIndex(3, 2, 1)] -> $(array2d[CartesianIndex(3, 2, 1)])\n")

array3d = reshape(array2d, (3, 5, 2))
println("The array named array3d: $(array3d) ($(summary(array3d)))\n")

temp_result2 = array3d[:, :, 1]
println("array3d[:, :, 1] -> $(temp_result2) ($(summary(temp_result2)))")
temp_result2 = array3d[:, [1,2], 1]
println("array3d[:, [1,2], 1] -> $(temp_result2) ($(summary(temp_result2)))\n")

temp_result2 = array3d[:, [1,2], :]
println("array3d[:, [1,2], :] -> $(temp_result2) ($(summary(temp_result2)))\n")

temp_result2 = array3d[:, [1,2], [1]]
println("array3d[:, [1,2], [1]] -> $(temp_result2) ($(summary(temp_result2)))\n")

temp_result2 = array3d[:, 1, :]
println("array3d[:, 1, :] -> $(temp_result2) ($(summary(temp_result2)))")
temp_result2 = array3d[1, :, :]
println("array3d[1, :, :] -> $(temp_result2) ($(summary(temp_result2)))\n\n")
