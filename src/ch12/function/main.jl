# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 没有参数类型声明的函数定义。
function sum1(a, b)
    a + b
end

# 拥有参数类型声明的函数定义。
function sum1(a::Number, b::Number)
    a + b
end

# 这个函数没有实际意义，因为它被调用时一定会引发一个异常。
function sum2(a::Number, b::Number)::String
    a + b
end

# 将会返回多个结果值的函数（方法）。
function sum3(a, b)
    try
        a + b, nothing
    catch e
        0, e
    end
end

function call(f::Function) 
    println("$(nameof(f))(1, 2) -> $(f(1, 2)) (type: $(typeof(f(1, 2))))")
    println("""$(nameof(f))("a", "b") -> $(f("a", "b")) (type: $(typeof(f("a", "b"))))\n""")
end

call(sum3)  

# 拥有结果声明（双结果值）的函数定义。
function sum3(a, b)::Tuple{Number,Union{Nothing,Exception}}
    try
        a + b, nothing
    catch e
        0, e
    end
end

call(sum3) 

# 拥有结果声明（单结果值）的函数定义。
function sum3(a, b)::Union{Number,Exception}
    try
        a + b
    catch e
        e
    end
end

call(sum3) 

# 拥有较严格的（参数和结果）类型约束的函数定义。
function sum3(a::Number, b::Number)::Number
    a + b
end

# 函数定义的简洁形式。
sum3(a, b) = a + b
sum3(a, b) = try a + b catch e e end
sum4(a, b) = if isa(a, Number) && isa(b, Number) a + b else MethodError(+, (a, b)) end
sum5(a, b) = (res = 0; err = nothing; try res = a + b catch e err = e end; (res, err))

call(sum4) 
call(sum5) 