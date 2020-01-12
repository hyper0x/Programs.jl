# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

"""
    basic_info(array::Array)

用于获取数组的基本信息的函数。
"""
basic_info(array::Array) = "$(array) ($(summary(array)))"

# 构造函数。
temp_array = Array{Int64}(undef, 4, 3, 2)
println("Array{Int64}(undef, 4, 3, 2) -> $(basic_info(temp_array))\n")

temp_array = Array{Int64,4}(undef, (4, 3, 2, 2))
println("Array{Int64, 4}(undef, (4, 3, 2, 2)) -> $(basic_info(temp_array))\n")

temp_array = Array{Union{Nothing,String}}(nothing, 2, 2)
println("Array{Union{Nothing, String}}(nothing, 2, 2) -> $(basic_info(temp_array))\n")

temp_array = Array{Union{Missing,Int64}}(missing, 2, 3)
println("Array{Union{Missing, Int64}}(missing, 2, 3) -> $(basic_info(temp_array))\n\n")


# 另外的一些可以创建多维数组的函数。
temp_array = zeros(Float32, 4, 3)
println("zeros(Float32, 4, 3) -> $(basic_info(temp_array))\n")

temp_array = ones(Float32, 4, 3)
println("ones(Float32, 4, 3) -> $(basic_info(temp_array))\n")

temp_array = fill(1.0f-3, 2, 3)
println("fill(1.0f-3, 2, 3) -> $(basic_info(temp_array))\n")