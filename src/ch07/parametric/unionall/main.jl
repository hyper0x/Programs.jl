# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 代表首饰的类型。
abstract type Jewelry end

# 代表戒指的类型。
struct Ring <: Jewelry end

# 代表抽屉的类型。
mutable struct Drawer{T}
    content::T
end

println("The type of $(Drawer{Jewelry}) is $(typeof(Drawer{Jewelry})).")
println("The type of $(Drawer{}) is $(typeof(Drawer{})).\n")


"""
    parse_and_eval(expr_text::String)

用于解析并求值的函数。它会先把文本解析为表达式，再对该表达式进行求值，最后返回求值结果。
"""
function parse_and_eval(expr_text::String)
    eval(Meta.parse(expr_text))
end

expr_text1 = "Array{<:Jewelry,1}"
expr1 = parse_and_eval(expr_text1)
println("The expression \"$(expr_text1)\" represents `$(expr1)`. (type: $(typeof(expr1)))")

expr_text2 = "Array{T,N} where T<:Jewelry where N"
expr2 = parse_and_eval(expr_text2)
println("The expression \"$(expr_text2)\" represents `$(expr2)`. (type: $(typeof(expr2)))")

expr_text3 = "JewelryArray{N} = Array{<:Jewelry, N}"
expr3 = parse_and_eval(expr_text3)
println("The expression \"$(expr_text3)\" represents `$(expr3)`. (type: $(typeof(expr3)))")
