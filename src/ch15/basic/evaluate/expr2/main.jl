# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

code2 = "(a + 2.3) * b"
println("Code 2: $(code2)")
println("Parse code 2...")
expr2 = Meta.parse(code2)

try
    println("Evaluate expression 2...")
    eval(expr2)
catch e
    if isa(e, Core.UndefVarError)
        undef_var_err = e::Core.UndefVarError
        println("ERROR($(typeof(undef_var_err))): $((undef_var_err.var)) not defined")
    end
end
println()

a = 1.2; b = 1 // 3;
println("Define global variables: a = 1.2; b = 1 // 3;")
println("Parse & evaluate code 2...")
eval(Meta.parse(code2))
println("Done.\n")

code2_2 = "(c + 2.3) * d"
println("Code 2_2: $(code2_2)")
let c = 1.2, d = 1 // 3
    println("Let c = 1.2, d = 1 // 3")
    println("Parse & evaluate code 2_2...")
    try 
        eval(Meta.parse(code2_2))
        println("Done.")
    catch e
        undef_var_err = e::Core.UndefVarError
        println("ERROR($(typeof(undef_var_err))): $((undef_var_err.var)) not defined")
    end
end

