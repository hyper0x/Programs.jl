# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 数组推导式。
array_comp1 = [e * 2 for e in 1:6]
println("array_comp1 = [e*2 for e in 1:6]")
println("The array named array_comp1: $(array_comp1) ($(summary(array_comp1)))\n")

array_comp2 = [e * 2 for e in [[1,2] [3,4] [5,6]]]
println("array_comp2 = [e*2 for e in [[1,2] [3,4] [5,6]]]")
println("The array named array_comp2: $(array_comp2) ($(summary(array_comp2)))\n")

array_comp3 = [Float32(e * 2) for e in [[1,2] [3,4] [5,6]]]
println("array_comp3 = [Float32(e*2) for e in [[1,2] [3,4] [5,6]]]")
println("The array named array_comp3: $(array_comp3) ($(summary(array_comp3)))\n")

array_comp4 = [x + y for x = 1:2, y = 10:10:50]
println("array_comp4 = [x+y for x=1:2, y=10:10:50]")
println("The array named array_comp4: $(array_comp4) ($(summary(array_comp4)))\n")

array_comp5 = [x + y for x = [[1,2] [3,4]], y = 10:10:30]
println("array_comp5 = [x+y for x=[[1,2] [3,4]], y=10:10:30]")
println("The array named array_comp5: $(array_comp5) ($(summary(array_comp5)))\n")

array_comp6 = [x + y for x = [[1,2] [3,4]] for y = 10:10:30]
println("array_comp6 = [x+y for x=[[1,2] [3,4]] for y=10:10:30]")
println("The array named array_comp6: $(array_comp6) ($(summary(array_comp6)))\n")

array_comp7 = [x + y for x = [[1,2] [3,4]], y = 10:10:30 if isodd(x)]
println("array_comp7 = [x+y for x=[[1,2] [3,4]], y=10:10:30 if isodd(x)]")
println("The array named array_comp7: $(array_comp7) ($(summary(array_comp7)))\n\n")


# 生成器表达式。
println("reduce(*, (x for x=1:5)) -> $(reduce(*, (x for x = 1:5)))")
println("reduce(*, [x for x=1:5]) -> $(reduce(*, [x for x = 1:5]))\n")

println("Allocated bytes:")
num1 = @allocated reduce(*, (x for x = 1:10))
println("  reduce(*, (x for x=1:10)) => $(num1)")
num2 = @allocated reduce(*, [x for x = 1:10])
println("  reduce(*, [x for x=1:10]) => $(num2)\n")
