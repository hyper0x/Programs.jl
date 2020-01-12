# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

"""
    get_uint32(x)

把参数`x`的值的类型转换为`UInt32`，并返回转换后的值。
"""
function get_uint32(x)
    # 附加类型标注的变量 y。
    y::UInt32 = x
    y
end

z = get_uint32(2020)
# 下一行代码中的 z::UInt32 是类型断言。
println("Invoke function get_uint32 with 2020: $(z::UInt32) (type: $(typeof(z)))")

# 下一行的 x 是全局变量，不能附加类型标注。
# x::UInt32 = 2020 #= 这里会报错。 =#

# 使用 Ref{T} 类型的全局常量替代全局变量。
const xref = Ref{UInt32}(2020)
# 操作符 [] 可用于存/取引用的值。
println("xref -> $(xref[]::UInt32)")
