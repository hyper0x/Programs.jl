# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 存取键值对。
dict2 = Dict{String,Int64}()
println("Store pair \"a\"=>1 into dictionary dict2...")
dict2["a"] = 1
println("Store pair \"b\"=>2 into dictionary dict2...")
dict2["b"] = 2
println("Dict 2 (1): $(dict2)")

function judge2(dict, key)
    has = haskey(dict, key)
    val = get(dict, key, "[nothing]")
    "Is there a key \"$(key)\" in the dictionary $(dict)? $(has) (value: $(val))"
end

println(judge2(dict2, "a"))
println(judge2(dict2, "c"), "\n")

println("Store pair \"c\"=>2 into dict2 (if not present)...")
get!(dict2, "c", 3)
println("Dict 2 (2): $(dict2)")
println("Pop the pair for key \"c\": $(pop!(dict2, "c", "[default]"))")
println("Pop the pair for key \"d\": $(pop!(dict2, "d", "[default]"))")
println("Delete the pair for key \"b\" from dict2: $(delete!(dict2, "b"))")
println("Empty dictionary dict2. Dict (3): $(empty!(dict2))\n\n")


# 迭代。
dict3 = Dict("a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5)
println("Dict 3: $(dict3)\n")

for p in dict3
    println("The pair in dict3: $(p) [$(typeof(p))]")
end
println()

for (k, v) in dict3
    println("The key & value in dict3: ($k, $v) [$(typeof(k)), $(typeof(v))]")
end
println("\n")


# 获取列表。
dict4 = Dict("a" => 1, "b" => 2, "c" => 3)
println("Dict 4: $(dict4)\n")

keys_dict4 = keys(dict4)
println("The keys in dict4: $(keys_dict4)（type: $(keytype(dict4)))")
println("Is there a key \"a\" in the key list of dict4? $(in("a", keys_dict4))\n")

values_dict4 = values(dict4)
println("The values in dict4: $(values_dict4)（type: $(valtype(dict4)))\n\n")


# 合并。
dict5 = Dict("a" => 10, "b" => 20, "c" => 30)
println("Dict 5: $(dict5)")
println("Merge dict3, dict4 and dict5: $(merge(dict3, dict4, dict5))\n")

dict6 = Dict("a" => 1.0, "d" => 4.0, "e" => 5.0)
println("Dict 6: $(dict6)")
println("Merge dict5 and dict6: $(merge(dict5, dict6))")
println("Merge dict5 and dict6 with combine `+`: $(merge(+, dict5, dict6))\n")

dict7 = Dict(1 => "a", 2 => "b", 3 => "c")
println("Dict 7: $(dict7)")
dict8 = Dict(1.0 => 'a', 3.0 => 'c')
println("Dict 8: $(dict8)")
println("Merge dict7 and dict8: $(merge(dict7, dict8))")
println("Merge dict7 and dict8 with combine `string`: $(merge(string, dict7, dict8))\n")

dict9 = Dict(1 => "x", 2 => "y", 4 => "z")
println("Dict 9 (1): $(dict9)")
println("Merge dict9 and dict7 (change dict9): $(merge!(dict9, dict7))")
println("Merge dict9 and dict8 with combine `*` (change dict9): $(merge!(*, dict9, dict8))")
println("Dict 9 (2): $(dict9)\n")
