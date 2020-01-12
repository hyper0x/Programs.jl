# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

println("[1, 2, 3, 4] < [1, 3, 2, 4] -> $([1, 2, 3, 4] < [1, 3, 2, 4])\n")

a5 = [1,1,2,3,5,8,13]
println("The array named a5: $(a5)")
println("a5 === a5 -> $(a5 === a5)")
println("a5 === [1,1,2,3,5,8,13] -> $(a5 === [1,1,2,3,5,8,13])\n")

println("cmp([1,2,3,4], [1,3,2,4]) -> $(cmp([1,2,3,4], [1,3,2,4]))\n\n")


a6 = [[1,2] [3,4]]
println("The array named a6: $(a6) ($(summary(a6)))")
a7 = [[1,3] [2,4]]
println("The array named a7: $(a7) ($(summary(a7)))\n")

a8 = vcat(a6, a7)
println("a8 = vcat(a6, a7)")
println("The array named a8: $(a8) ($(summary(a8)))\n")

a9 = hcat(a6, a7)
println("a9 = hcat(a6, a7)")
println("The array named a9: $(a9) ($(summary(a9)))\n")

a10 = cat(a6, a7, dims = 3)
println("a10 = cat(a6, a7, dims = 3)")
println("The array named a10: $(a10) ($(summary(a10)))\n")

println("Define our own method `cmp` derives from function `Base.cmp`...")

# 在编写 cmp 的衍生方法之前，必须先把 cmp 函数导入进来。
import Base.cmp

"""
    cmp(A::Array, B::Array)

针对数组的 cmp 函数的衍生方法。
"""
function cmp(A::Array, B::Array)
    for (a, b) in zip(A, B)
        if !isequal(a, b)
            return isless(a, b) ? -1 : 1
        end
    end
    return cmp(length(A), length(B))
end


println("Define our own method `isless` derives from function `Base.isless`...\n")

# 在编写 isless 的衍生方法之前，必须先把 isless 函数导入进来。
import Base.isless

"""
    isless(A::Array, B::Array)

针对数组的 isless 函数的衍生方法。
"""
isless(A::Array, B::Array) = cmp(A, B) < 0


println("Compare a6 and a7: $(cmp(a6, a7))")
println("Compare a6 and a8: $(cmp(a6, a8))")
println("Compare a6 and a9: $(cmp(a6, a9))")
println("Compare a6 and a10: $(cmp(a6, a10))\n")

println("a6 < a7 -> $(isless(a6, a7))")
println("a6 < a8 -> $(isless(a6, a8))")
println("a6 < a9 -> $(isless(a6, a9))")
println("a6 < a10 -> $(isless(a6, a10))\n")
