# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 操作符 ===
println("$(NaN) === $(NaN): $(NaN === NaN)")
println("$(Inf) === $(Inf): $(Inf === Inf)")
println("$(-Inf) === $(-Inf): $(-Inf === -Inf)")
println("$(0.0) === $(-0.0): $(0.0 === -0.0)\n")

# 操作符 ==
println("$(NaN) == $(NaN): $(NaN == NaN)")
println("$(Inf) == $(Inf): $(Inf == Inf)")
println("$(-Inf) == $(-Inf): $(-Inf == -Inf)")
println("$(0.0) == $(-0.0): $(0.0 == -0.0)\n")

# 函数 isequal
println("$(NaN) is equals to $(NaN): $(isequal(NaN, NaN))")
println("$(Inf) is equals to $(Inf): $(isequal(Inf, Inf))")
println("$(-Inf) is equals to $(-Inf): $(isequal(-Inf, -Inf))")
println("$(0.0) is equals to $(-0.0): $(isequal(0.0, -0.0))")
