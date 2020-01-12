# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

c1 = (a = 5 * 8; b = a^2)
println("c1 = (a = 5 * 8; b = a^2) -> c1: $c1 \n")

c2 = begin a = 5 * 8; b = a^2 end
println("c2 = begin a = 5 * 8; b = a^2 end -> c2: $c2 \n")

c2 = begin
    a = 5 * 8
    b = a^2
end
c2_str = """
c2 = begin
    a = 5 * 8
    b = a^2
end
"""
println("$c2_str -> c2: $c2 \n")
