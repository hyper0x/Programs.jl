# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 一维数组。
temp_array1 = [1,2,3,4,5,6,7,8,9]
println("The temporary array 1: $(temp_array1)\n")

temp_result1 = findfirst(isequal(7), temp_array1)
println("findfirst(isequal(7), temp_array1) -> $(temp_result1)")
temp_result1 = findfirst(isequal(27), temp_array1)
println("findfirst(isequal(27), temp_array1) == nothing -> $(temp_result1 == nothing)\n")

# 二维数组。
array2d = [[1,2,3,4,5] [6,7,8,9,10] [11,12,13,14,15] [16,17,18,19,20] [21,22,23,24,25] [26,27,28,29,30]]
println("The array named array2d: $(array2d) ($(summary(array2d)))\n")

temp_result2 = findfirst(isequal(27), array2d)
temp_result2_v = array2d[temp_result2]
println("findfirst(isequal(27), array2d) -> $(temp_result2) (value: $(temp_result2_v))")
temp_result2 = findnext(iseven, array2d, CartesianIndex(2, 6))
temp_result2_v = array2d[temp_result2]
println("findnext(iseven, array2d, CartesianIndex(2, 6)) -> $(temp_result2) (value: $(temp_result2_v))")
temp_result2 = findprev(iseven, array2d, CartesianIndex(2, 6))
temp_result2_v = array2d[temp_result2]
println("findprev(iseven, array2d, CartesianIndex(2, 6)) -> $(temp_result2) (value: $(temp_result2_v))\n")

# 布尔值数组。
array2d_bool = Bool[0 0 1 0 0 1; 1 0 1 0 0 0; 0 0 0 1 0 0; 1 0 0 0 1 1; 0 1 0 1 0 0]
println("The array named array2d_bool: $(array2d_bool) ($(summary(array2d_bool)))\n")

temp_result3 = findlast(array2d_bool)
temp_result3_v = array2d_bool[temp_result3]
println("findlast(array2d_bool) -> $(temp_result3) (value: $(temp_result3_v))")
temp_result3 = findprev(array2d_bool, CartesianIndex(3, 6))
temp_result3_v = array2d_bool[temp_result3]
println("findprev(array2d_bool, CartesianIndex(3, 6)) -> $(temp_result3) (value: $(temp_result3_v))")
temp_result3 = findall(array2d_bool)
temp_result3_v = array2d_bool[temp_result3]
println("findall(array2d_bool) -> $(temp_result3) (value: $(temp_result3_v))\n\n")


# 最小值和最大值：一维数组。
temp_array2 = [115,65,18,2,117,-102,123,66,-93,-102]
println("The temporary array 2: $(temp_array2)")

temp_array3 = [115,65,18,2,117,-102,123,66,NaN,-102]
println("The temporary array 3: $(temp_array3)\n")

temp_result4 = findmin(temp_array2)
println("findmin(temp_array2) -> $(findmin(temp_array2))")

temp_result4 = findmin(temp_array3)
println("findmin(temp_array3) -> $(findmin(temp_array3))\n")

# 最小值和最大值：二维数组。
temp_array5 = findmax(array2d, dims = 1)
println("findmax(array2d, dims=1) -> $(temp_array5)")
temp_array5 = findmax(array2d, dims = 2)
println("findmax(array2d, dims=2) -> $(temp_array5)")
temp_array5 = findmax(array2d, dims = (1, 2))
println("findmax(array2d, dims=(1,2)) -> $(temp_array5)\n")
