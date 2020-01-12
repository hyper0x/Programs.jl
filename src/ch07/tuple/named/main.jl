# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 有名的元组。
named_tuple1 = (name = "Robert", reg_year = 2020, extra = "something")
println("The named tuple called named_tuple1: $(named_tuple1)")
println("The type of named_tuple1: $(typeof(named_tuple1))")
elem_name1 = :reg_year
elem_value1 = named_tuple1[elem_name1]
println("The value of element named $(elem_name1) in named_tuple1: $(elem_value1)\n")

named_tuple2 = NamedTuple{(:name, :reg_year, :extra)}(("Robert", 2020, "something"))
println("The named tuple called named_tuple2: $(named_tuple2)")
println("named_tuple1 == named_tuple2: $(named_tuple1 == named_tuple2)\n")