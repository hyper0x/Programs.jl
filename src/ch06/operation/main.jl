# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 获取字符串的尺寸和长度。
comment1 = "codeunit 函数会返回给定字符串对象的代码单元类型"
println("The value of comment1: $(comment1)\n")
size1, len1 = sizeof(comment1), length(comment1)

println("The size of comment1: $(size1)")
println("The size of \"a\": $(sizeof("a"))")
println("The size of \"中\": $(sizeof("中"))\n")

println("The length of comment1: $(len1)")
println("The length of \"a\": $(length("a"))")
println("The length of \"中\": $(length("中"))\n")

# 字符串的索引。
char_index1 = 13
char1 = comment1[char_index1]
println("The $(char_index1)th char in comment1: $(char1)")
println("The last char in comment1: $(comment1[end])")
char_index2 = thisind(comment1, size1)
println("The last char in comment1: $(comment1[char_index2])")
char_index3_1 = nextind(comment1, size1 - 5)
char_index3_2 = thisind(comment1, size1)
println("The last char in comment1: $(comment1[char_index3_1:char_index3_2])\n")

# 字符串的拼接。
dup_chars_1 = "\xe2\x88"
dup_chars_2 = "\x80"
dup_chars_3 = "\xe2\x88\x80"
dup_chars = "\xe2\x88" * "\x80" * "\xe2\x88\x80"
println("The string: $(string(dup_chars_1, dup_chars_2, dup_chars_3))")
println("The string: $(dup_chars)")
println("Is string $(dup_chars) valid? $(isvalid(dup_chars) ? "Yes" : "No")\n")

# 字符串的搜索。
slogan1 = "Julia 编程入门很简单。"
println("The value of slogan1: $(slogan1)")
target1 = "入门"
println("The position of \"$(target1)\" in slogan1: $(findfirst(target1, slogan1))\n")

slogan2 = "Julia 编程入门，跟着入门很简单。"
println("The value of slogan2: $(slogan2)")
target2 = "入门"
index2 = 19
println("The position of \"$(target2)\" in slogan2: $(findprev(target2, slogan2, index2))", 
        " (before index $(index2))")
println("The position of \"$(target2)\" in slogan2: $(findnext(target2, slogan2, index2))", 
        " (after index $(index2))")
target3 = '编'
index3 = findfirst(isequal(target3), slogan2)
println("The index of \'$(target3)\' in slogan2: $(index3)\n")

# 字符串的比较。
println("\"Julia\" < \"Julie\": $("Julia" < "Julie")")
println("\"Julia\" < \"Julian\": $("Julia" < "Julian")")
println("\"Michael\" < \"Mike\": $("Michael" < "Mike")\n")