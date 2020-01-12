# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# while 语句与 global 变量。
num = 0;
while num <= 9 
    global num += 1 
    print("$num ") 
end
println("\n")

# 嵌套的 while 语句与 global 变量。
num = 0;
while num < (10 - 1) 
    global num += 1
    sign = num
    while num % 2 != 0
        sign = num + 1
        global num += 1
    end
    print("$sign")
    # print("(num=$num)")
    print(" ")
end
println("\n")

# 嵌套的 while 语句与 local 变量。
num = 0;
while num < (10 - 1) 
    global num += 1
    sign = num
    while num % 2 != 0
        local sign = num + 1
        global num += 1
    end
    print("$sign")
    # print("(num=$num)")
    print(" ")
end
println("\n")

# while 语句与 break 语句。
num = 0;
while true
    global num += 1
    print("$num ")
    if num >= 10
        break
    end
end
println()