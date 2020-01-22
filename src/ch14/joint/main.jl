# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 泛化函数的定义。该函数用于“贴合”两个值并返回结果。
# 所谓的“贴合”，是在模拟物理上的黏贴。
function joint end

# 针对整数值的衍生方法。
function joint(a::T, b::T)::T where T <: Integer
    print("[joint(a::T, b::T)::T where T <: Integer] ")
    if a == 0 || b == 0
        return a * 10 + b
    end
    if b > 0
        if a > 0
            return joint(Unsigned(a), Unsigned(b))
        else 
            return -1 * Int(joint(Unsigned(abs(a)), Unsigned(b)))
        end
    end
    throw(DomainError((a, b), "Unsupported arguments!"))
end

# 针对无符号整数值的衍生方法。
function joint(a::T, b::T)::T where T <: Unsigned
    print("[joint(a::T, b::T)::T where T <: Unsigned] ")
    if a == 0 || b == 0
        return a * 10 + b
    end
    a * 10^(trunc(UInt, log10(b)) + 1) + b
end

# 兼顾字符类型和字符串类型的别名类型。
const CharOrString = Union{Char,String}

# 针对字符值和字符串值的衍生方法。
function joint(a::CharOrString, b::CharOrString)
    print("[joint(a::CharOrString, b::CharOrString)] ")
    a * b
end

println("methods(joint) -> $(methods(joint))\n")

println("joint(0, 21) -> $(joint(0, 21))")
println("joint(23, 0) -> $(joint(23, 0))\n")

println("joint(-1, 2) -> $(joint(-1, 2))")
println("joint(12, 345) -> $(joint(12, 345))")
println("joint(UInt(12), UInt(345)) -> $(joint(UInt(12), UInt(345)))\n")

try
    println("joint(1, -2) -> $(joint(1, -2))")
catch e
    println("ERROR: $(e)")
end

try
    println("joint(1.2, 3) -> $(joint(1.2, 3))")
catch e
    println("ERROR: $(e)\n")
end

println("""joint('J', "ulia") -> $(joint('J', "ulia"))\n""")