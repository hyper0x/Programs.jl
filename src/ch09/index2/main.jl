# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 二维数组。
array2d = [[1,2,3,4,5] [6,7,8,9,10] [11,12,13,14,15] [16,17,18,19,20] [21,22,23,24,25] [26,27,28,29,30]]
println("The array named array2d (1): $(array2d) ($(summary(array2d)))\n")

array2d_copy = copy(array2d)
println("The array named array2d_copy (1): $(array2d_copy)\n")

array2d_copy[5] = 50; 
println("array2d_copy[5] = 50")
array2d_copy[[1,3]] = [10, 30]; 
println("array2d_copy[[1,3]] = [10, 30]")
array2d_copy[7:9] = [70, 80, 90]; 
println("array2d_copy[7:9] = [70, 80, 90]\n")

println("The array named array2d_copy (2): $(array2d_copy)\n")

println("The array named array2d (2): $(array2d)\n\n")

# 三维数组。
array3d = reshape(array2d, (3, 5, 2))
println("The array named array3d (1): $(array3d) ($(summary(array3d)))\n")

array3d_copy = copy(array3d)
println("The array named array3d_copy (1): $(array3d_copy)\n")

array3d_copy[:, :, 1] = zeros(Int64, 3, 5); 
println("array3d_copy[:, :, 1] = zeros(Int64, 3, 5)")
array3d_copy[:, 3:4, 2] = ones(Int64, 3, 2); 
println("array3d_copy[:, 3:4, 2] = ones(Int64, 3, 2)")
array3d_copy[:, [1,5], 2] = fill(2, 3, 2)
println("array3d_copy[:, [1,5], 2] = fill(2, 3, 2)\n")

println("The array named array3d_copy (2): $(array3d_copy)\n")

println("The array named array3d (2): $(array3d)\n")
