# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 原始字符串。
str_origin = raw"Julia\n\n"
println("The original string: $(str_origin)\n")

# 整数和浮点数。
str_bigint = big"1314"
println("The string representing a BigInt value: $(str_bigint)")

str_bigfloat = big"3.14e-2"
println("The string representing a BigFloat value: $(str_bigfloat)\n")

# 版本号。
str_version = v"1.0.0-beta1"
println("The string representing a version value: $(str_version)\n")

str_version1 = v"1.0.0"
str_version2 = v"1.0.0-"
str_version3 = v"1.0.0-alpha"
str_version4_1 = v"1.0.0-beta1"
str_version4_2 = v"1.0.0-beta.1"

println("$(str_version2) < $(str_version1): $(str_version2 < str_version1)")
println("$(str_version2) < $(str_version3): $(str_version2 < str_version3)")
println("$(str_version2) < $(str_version4_1): $(str_version2 < str_version4_1)\n")

println("$(str_version1) < $(str_version3): $(str_version1 < str_version3)")
println("$(str_version1) < $(str_version4_1): $(str_version1 < str_version4_1)")
println("$(str_version3) < $(str_version4_1): $(str_version3 < str_version4_1)")
println("$(str_version4_1) < $(str_version4_2): $(str_version4_1 < str_version4_2)\n")

str_version5 = v"1.0.0+"
str_version6_1 = v"1.0.0+win64"
str_version6_2 = v"1.0.0+win64.1"

println("$(str_version5) > $(str_version1): $(str_version5 > str_version1)")
println("$(str_version5) > $(str_version2): $(str_version5 > str_version2)")
println("$(str_version5) > $(str_version6_1): $(str_version5 > str_version6_1)")
println("$(str_version6_1) > $(str_version6_2): $(str_version6_1 > str_version6_2)\n")

# 正则表达式。
str_regex1 = r"\+((?:[0-9a-z-]+\.)*[0-9a-z-]+)"
println("A string representing a RegEx: $(str_regex1)")
build_info1 = "+win64.20200101"
println("The build information 1: $(build_info1)\n")

rm1 = match(str_regex1, build_info1)
println("The regex match named rm1: $(rm1)")
println("  rm1.match: $(rm1.match)")
println("  rm1.captures: $(rm1.captures)")
println("  rm1.offset: $(rm1.offset)")
println("  rm1.offsets: $(rm1.offsets)")
println("  rm1.regex: $(rm1.regex)\n")

str_regex2 = r"(.*\.)(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2})"
println("Another string representing a RegEx: $(str_regex2)")
build_info2 = "+win64.2020-01-01T21:01"
println("The build information 2: $(build_info2)")
str_sub2 = s"\1\2\3\4\5\6"
println("The substitution string: $(str_sub2)")
build_info2_new = replace(build_info2, str_regex2 => str_sub2)
println("The new value for build information 2: $(build_info2_new)\n")

# 字节数组。
ba1 = b"\u4e2d\xe5\x9b\xbd"
println("The string representing a byte array: $(ba1)")
println("The characters represented by this byte array: $(String(ba1))\n")
