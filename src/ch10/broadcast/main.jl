# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

array2d = [[1,2,3,4,5] [6,7,8,9,10] [11,12,13,14,15] [16,17,18,19,20] [21,22,23,24,25] [26,27,28,29,30]]
println("The array named array2d: $(array2d) ($(summary(array2d)))\n")

operand1 = copy(array2d)
println("The array named operand1: $(operand1) ($(summary(operand1)))\n")

println("broadcast(*, operand1, 10) -> $(broadcast(*, operand1, 10))\n")
println("broadcast(-, operand1) -> $(broadcast(-, operand1))\n")
println("broadcast(-, operand1, 10) -> $(broadcast(-, operand1, 10))\n")
println("broadcast(isodd, operand1) -> $(broadcast(isodd, operand1))\n")
println("broadcast(Int, broadcast(isodd, operand1)) -> ",
        broadcast(Int, broadcast(isodd, operand1)), "\n\n")

operand2 = [2, 4, 6, 8, 10];
println("The array named operand2: $(operand2) ($(summary(operand2)))\n")

println("broadcast(+, operand1, operand2) -> $(broadcast(+, operand1, operand2))\n\n")

println("operand1 .* 10 -> $(operand1 .* 10)\n")
println(".- operand1 -> $(.- operand1)\n")
println("isodd.(operand1) -> $(isodd.(operand1))\n")
println("Int.(isodd.(operand1)) -> $(Int.(isodd.(operand1)))\n")
