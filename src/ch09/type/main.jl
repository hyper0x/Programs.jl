# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 数组类型的继承关系。
println("Array <: AbstractArray -> $(Array <: AbstractArray)")
println("Array{Float64,3} <: Array{Real,3} -> $(Array{Float64,3} <: Array{Real,3})\n")

# 数组类型的别名类型。
println("Vector{Int} == Array{Int,1} -> $(Vector{Int} == Array{Int,1})")
println("Matrix{Int} == Array{Int,2} -> $(Matrix{Int} == Array{Int,2})\n")

# 数组长度的最大值。
println("Array{T,typemax(Int64)} where T -> $(Array{T,typemax(Int64)} where T)\n")

# 数组的类型。
type1 = Array{Int64,1}
println("isa([1], Array{Int64,1}) -> $(isa([1], type1))")
println("isa([1,2,3], Array{Int64,1}) -> $(isa([1,2,3], type1))")
println("isa([1,2,3,4,5], Array{Int64,1}) -> $(isa([1,2,3,4,5], type1))\n")

# 多维数组与数组的嵌套。
println("The type of [[1,2] [3,4]]: $(typeof([[1,2] [3,4]]))")
println("The type of [[1,2], [3,4,5]]: $(typeof([[1,2], [3,4,5]]))\n")