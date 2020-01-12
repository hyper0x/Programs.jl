# 提供简易计算器模块的文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

module Calculator
export sum1, square1

version1 = v"0.1.0"

sum1(a::Real, b::Real) = a + b
square1(a::Real) = a * 2

end
