# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 字符相关的示例。
println("Chars: $('中') $('\u4e2d') $('\U004e2d')")

println("Chars: $('a') $('\x61') $('\141') \n")

println("'a' < '中': $('a' < '中') \n")

println("Int64('中'): $(Int64('中'))")
println("Char(20013): $(Char(20013)) \n")

println("isvalid('中'): $(isvalid('中'))")
println("isvalid(Char(0x11ffff)): $(isvalid(Char(0x11ffff))) \n")

code_point = codepoint('中')
println("codepoint('中'): $(code_point) (type: $(typeof(code_point))) \n\n")


# 字符串相关的示例。
str1 = "☼ CN        \nUS\nEN\nRU \n\t\n"
println("String 1:\n$(str1)")

str2 = """
Julia
  Python
    Golang
      
      Java
  """
println("String 2:\n$(str2)", '\n')

comment1 = "codeunit 函数会返回给定字符串对象的代码单元类型"
println("The value of comment1: $(comment1)")
println("The code unit type of comment1: $(codeunit(comment1))")
println("The code unit number of comment1: $(ncodeunits(comment1))")

sn1 = 8
code_unit1 = codeunit(comment1, sn1)
println("The $(sn1)th code unit of comment1: $(code_unit1)\n")
