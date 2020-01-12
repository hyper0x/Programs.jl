# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

array4d = reshape(Vector(1:36), (3, 3, 2, 2))
println("The array named array4d: $(array4d) ($(summary(array4d)))\n")

array4d_view1 = view(array4d, 26)
println("The view named array4d_view1: $(array4d_view1) ($(summary(array4d_view1)))")
println("The size of array4d_view1: $(size(array4d_view1))")
println("The dimensions of array4d_view1: $(ndims(array4d_view1))")
println("The element type of array4d_view1: $(eltype(array4d_view1))")
println("The unique element value in array4d_view1: $(array4d_view1[])\n")

array4d_view1[] = 260
println("array4d_view1[] = 260")
println("The unique element value in array4d_view1: $(array4d_view1[])")
println("The element value of index 26 in array4d: $(array4d[26])\n")

array4d_view2 = view(array4d, [1,3,5])
println("The view named array4d_view2: $(array4d_view2) ($(summary(array4d_view2)))")
println("The element values in array4d_view2: $(array4d_view2[[1, 2, 3]])\n")

array4d_view2[[1,2,3]] = [10, 30, 50]
println("array4d_view2[[1,2,3]] = [10, 30, 50]")
println("The element values in array4d_view2: $(array4d_view2[:])\n")

array4d_view3 = view(array4d, :, 1, 2, 2)
println("The view named array4d_view3: $(array4d_view3) ($(summary(array4d_view3)))\n")

array4d_view3[:] = [280, 290, 300]
println("array4d_view3[:] = [280, 290, 300]")
println("The element values in array4d_view3: $(array4d_view3[:])")
println("The first vector of the last 2-dimensional array in array4d: $(array4d[:, 1, 2, 2])\n")

println("parent(array4d_view3) === array4d -> $(parent(array4d_view3) === array4d)\n")

pindeces = parentindices(array4d_view3)
println("parentindices(array4d_view3) -> $(pindeces)")
array4d_view3_a = array4d[CartesianIndices(pindeces)]
println("array4d[CartesianIndices(parentindices(array4d_view3))] -> ", 
        array4d[CartesianIndices(pindeces)])
println("vec(array4d[CartesianIndices(parentindices(array4d_view3))]) -> ", 
        vec(array4d_view3_a))
println("array4d[:, 1, 2, 2] -> $(array4d[:, 1, 2, 2])\n")
