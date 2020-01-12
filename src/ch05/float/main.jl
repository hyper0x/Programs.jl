# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 一个数组，容纳了所有可以代表浮点数的原语类型。
float_types = [Float16, Float32, Float64]

# 一个循环，以此为每个浮点数类型做相同的判断和输出。
for T in float_types
    # 打印：最大值、最小值以及它们的类型。
    val_max = typemax(T)
    val_min = typemin(T)
    type_max_more = typeof(val_max)
    type_min_less = typeof(val_min)
    println("$(T): max: $(val_max) ($(type_max_more)); min: $(val_min) ($(type_min_less))")
end
