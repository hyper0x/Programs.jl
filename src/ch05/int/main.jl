# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 一个数组，容纳了所有可以代表整数的原语类型。
int_types = [Int8, Int16, Int32, Int64, Int128,
             UInt8, UInt16, UInt32, UInt64, UInt128]

println("Do they wraparound for overflow of integer values?")
# 一个循环，以此为每个整数类型做相同的判断和输出。
for T in int_types
    # 判断：最大值加 1 是否等于最小值，以及最小值减 1 是否等于最大值。
    max_more = typemax(T) + 1
    min_less = typemin(T) - 1
    wraparound = max_more == typemin(T) && min_less == typemax(T)
    type_max_more = typeof(max_more)
    type_min_less = typeof(min_less)
    hint = "[types: $(type_max_more) (max_more); $(lpad(type_min_less, 7)) (min_less)]"
    println("$(lpad(T, 7)): $(rpad(wraparound, 5)) $(hint)")
end
