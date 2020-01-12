# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 用于打印某人的体重的函数。
function print_weight(kg::Int)
    if kg <= 0
        throw(DomainError(kg, "The argument is too small!"))
    elseif kg > 500 
        throw(DomainError(kg, "The argument is too big!"))
    end
    println("$(kg) kg")
end

print_weight(100)
print_weight(501)
