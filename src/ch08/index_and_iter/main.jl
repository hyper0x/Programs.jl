# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

"""
    app(f, args...)

完全基于 applicable 函数的别名函数。只是为了缩短函数名称而已。
"""
app(f, args...) = applicable(f, args...)

# 可索引对象。
println("Is the string an indexable object? ", app(getindex, "1", 1))
println("Is the tuple an indexable object? ", app(getindex, (1,), 1))
println("Is the dict an indexable object? ", app(getindex, Dict(1 => "a"), 1))
println("Is the set an indexable object? ", app(getindex, Set([1]), 1))
println("Is the array an indexable object? ", app(getindex, [1], 1), "\n")

# 可迭代对象。
println("Is the string an iterable object? ", app(iterate, "1"))
println("Is the tuple an iterable object? ", app(iterate, (1,)))
println("Is the dict an iterable object? ", app(iterate, Dict(1 => "a")))
println("Is the set an iterable object? ", app(iterate, Set([1])))
println("Is the array an iterable object? ", app(iterate, [1]), "\n")