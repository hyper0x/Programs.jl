# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

big_int = big"1234567890123456789012345678901234567890"
println("The big integer: $(big_int) ($(typeof(big_int)))\n")


float_number = 5 / 7
println("The float number: $(float_number) ($(typeof(float_number)))")
big_float = BigFloat(5 / 7)
println("The big float (1): $(big_float) ($(typeof(big_float)))\n")


current_precision = precision(BigFloat)
current_rounding = rounding(BigFloat)
println("The current precision of BigFloat: $(current_precision)")
println("The current rounding of BigFloat: $(current_rounding)\n")


new_precision = 35
new_rounding = RoundDown
setprecision(new_precision) # 等同于 setprecision(BigFloat, new_precision)
setrounding(BigFloat, new_rounding)
println("The new precision of BigFloat: $(new_precision)")
println("The new rounding of BigFloat: $(new_rounding)")

big_float2 = BigFloat(5 / 7)
println("The big float (2): $(big_float2) ($(typeof(big_float2)))\n")


new_rounding = RoundUp
setrounding(BigFloat, new_rounding)
println("The new rounding of BigFloat: $(new_rounding)")
big_float3 = BigFloat(5 / 7)
println("The big float (3): $(big_float3) ($(typeof(big_float3)))")
