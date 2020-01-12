# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

vector_int = [115, 65, 18, 2, 117, -102, 123, 66, -93, -102]
println("The array named vector_int: $(vector_int) ($(summary(vector_int)))\n")

println("sort(vector_int) -> $(sort(vector_int))\n\n")


array2d_bool = Bool[0 0 1 0 0 1; 1 0 1 0 0 0; 0 0 0 1 0 0; 1 0 0 0 1 1; 0 1 0 1 0 0]
println("The array named array2d_bool: $(array2d_bool) ($(summary(array2d_bool)))\n")

println("sort(array2d_bool, dims=1) -> $(sort(array2d_bool, dims = 1))\n")
println("sort(array2d_bool, dims=2) -> $(sort(array2d_bool, dims = 2))\n\n")


vector_tuple = [(115, 65), (18, 2), (117, -102), (123, 66), (-93, -102)]
println("The array named vector_tuple: $(vector_tuple) ($(summary(vector_tuple)))\n")

println("sort(vector_tuple) -> $(sort(vector_tuple))\n")
println("sort(vector_tuple, lt=(i,j)->reverse(i)<reverse(j)) -> ", 
        sort(vector_tuple, lt = (i, j)->reverse(i) < reverse(j)), "\n")
println("sort(vector_tuple, by=(e)->e[2]) -> ", 
        sort(vector_tuple, by = (e)->e[2]), "\n")
println("sort(vector_tuple, by=(e)->reverse(e)) -> ", 
        sort(vector_tuple, by = (e)->reverse(e)), "\n")
println("sort(vector_tuple, by=(e)->sum(abs,e)) -> ", 
        sort(vector_tuple, by = (e)->sum(abs, e)), "\n\n")


vector_temp = [115, 65, 18, 2, 117, -102, 123, 66]
println("The array named vector_temp: $(vector_temp) ($(summary(vector_temp)))\n")

println("sort!(vector_temp) -> $(sort!(vector_temp))\n")

println("issorted(vector_temp, order=Base.Order.Forward) -> ", 
    issorted(vector_temp, order = Base.Order.Forward), "\n")
println("issorted(vector_temp, order=Base.Order.Reverse) -> ", 
    issorted(vector_temp, order = Base.Order.Reverse), "\n\n")


ord_nums = sortperm(vector_int);
println("sortperm(vector_int) -> $(ord_nums)")
ordered_vector_int = vector_int[ord_nums]
println("vector_int[sortperm(vector_int)] -> $(ordered_vector_int)")
println("issorted(vector_int[sortperm(vector_int)]) -> $(issorted(ordered_vector_int))\n\n")


array2d_small = Int8[[3,1,7,2] [7,5,9,7] [3,0,1,6] [7,5,8,2]]
println("The array named array2d_small: $(array2d_small) ($(summary(array2d_small)))\n")

println("sortslices(array2d_small, dims=1) -> ",
        sortslices(array2d_small, dims = 1), "\n")
println("sortslices(array2d_small, dims=2) -> ",
        sortslices(array2d_small, dims = 2), "\n")
