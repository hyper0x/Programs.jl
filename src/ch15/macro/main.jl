# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# hey 是一个可以打印问候语的宏。
macro hey(names::String...)
    :(println("Hey, $(join($names, ", ", " and "))."))
end

@hey "Jeff" "Alan" "Stefan" "Viral"

# hey 是一个可以打印问候语的函数。
function hey(names::String...)
    :(println("Hey, $(join($names, ", ", " and "))."))
end

expr_hey = hey("Jeff", "Alan", "Stefan", "Viral")
Core.eval(Main, expr_hey)
println()

# 宏的多重分派。
# 泛化宏的定义，可有可无。
macro sum1 end

macro sum1(nums::Number...)
    print("[sum1(nums::Number...)] ")
    reduce(+, nums)
end

macro sum1(strs::String...)
    print("[sum1(strs::String...)] ")
    reduce(*, strs)
end

res1 = @sum1 1 2 3
println("@sum1 1 2 3 -> $(res1) (type: $(typeof(res1)))")
res2 = @sum1 "1" "2" "3"
println("""@sum1 "1" "2" "3" -> $(res2) (type: $(typeof(res2)))""")