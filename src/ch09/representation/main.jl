# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 一般表示法：维数和类型。
temp_array = [1, 2, 3, 4, 5]
println("[1, 2, 3, 4, 5] -> $(temp_array) ($(summary(temp_array)))")
temp_array = [1; 2; 3; 4; 5]
println("[1; 2; 3; 4; 5] -> $(temp_array) ($(summary(temp_array)))")
temp_array = [1 2 3 4 5]
println("[1 2 3 4 5] -> $(temp_array) ($(summary(temp_array)))\n")

temp_array = [[1]; [2,3]; 4; 5]
println("[[1]; [2,3]; 4; 5] -> $(temp_array) ($(summary(temp_array)))")
temp_array = [[1], [2,3], 4, 5]
println("[[1], [2,3], 4, 5] -> $(temp_array) ($(summary(temp_array)))\n")

temp_array = Int8[1, 2, 3, 4, 5]
println("Int8[1, 2, 3, 4, 5] -> $(temp_array) ($(summary(temp_array)))")
temp_array = Int8[[1]; [2,3]; 4; 5]
println("Int8[[1]; [2,3]; 4; 5] -> $(temp_array) ($(summary(temp_array)))\n\n")


# 一般表示法：多维数组。
temp_array = [[1] [2 3] 4 5]
println("[[1] [2 3] 4 5] -> $(temp_array) ($(summary(temp_array)))")
temp_array = [[1;2] [3;4] [5;6]]
println("[[1;2] [3;4] [5;6]] -> $(temp_array) ($(summary(temp_array)))")
temp_array = [[1 2]; [3 4]; [5 6]]
println("[[1 2]; [3 4]; [5 6]] -> $(temp_array) ($(summary(temp_array)))\n")

temp_array = [ [[1.0;2.0] [1.1;2.1]]; [[3.0;4.0] [3.1;4.1]]; [[5.0;6.0] [5.1;6.1]] ]
println("[ [[1.0;2.0] [1.1;2.1]]; [[3.0;4.0] [3.1;4.1]]; [[5.0;6.0] [5.1;6.1]] ] -> ",
        temp_array, " (", 
        summary(temp_array), ")\n")