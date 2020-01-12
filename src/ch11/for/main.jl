# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 各种容器和字符串的迭代。
for e in [[1,2] [3,4] [5,6]]
    print(e, " ")
end
println("\n")

for (k, v) in Dict([(1, "a"), (2, "b"), (3, "c")])
    print("$(k)=>$(v) ")
end
println("\n")

for e in "Julia 编程"
    print(e)
end
println("\n")

for e = 1:10
    print("$(e) ")
end
println("\n")

# 迭代多个对象。
for x in 1:2, y in 10:10:30
    print((x, y), " ")
end
println("\n")

for x in 1:2, y in 10:10:30
    print((x, y), " ")
    x = 2
end
println("\n")

# for 语句的嵌套。
for x in 1:2
    for y in 10:10:30
        print((x, y), " ")
        x = 2
    end
end
println("\n")

# continue 语句。
for x in 1:5
    if x % 2 == 0
        continue
    end
    for y in 10:10:30
        print("($x,$y) ")
    end
end
println("\n")

# break 语句。
for x in 1:5
    if x % 3 == 0
        break
    end
    for y in 10:10:30
        print("($x,$y) ")
    end
end
println("\n")

for x in 1:5
    for y in 10:10:30
        if x % 3 == 0 
            break
        end
        print("($x,$y) ")
    end
end
println("\n")

# 重名变量。
for x in 1:3
    for x in 10:10:30
        print("($x) ")
    end
end
println("\n")

for x in 1:3
    for outer x in 10:10:30
        print("($x) ")
    end
    print("[$x] ")
end
println("\n")
