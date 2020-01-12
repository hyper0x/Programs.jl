# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 可变参数的元组。
vtt1 = Tuple{Vararg{String}}
println("A type of vararg tuple called vtt1: $(vtt1)")
println("isa((), vtt1) -> $(isa((), vtt1))")
println("isa((\"Julia\",), vtt1) -> $(isa(("Julia",), vtt1))")
println("isa((\"Julia\"), vtt1) -> $(isa(("Julia"), vtt1))\n")

vtt2 = Tuple{Vararg{Int,5}}
println("Another type of vararg tuple called vtt2: $(vtt2)")
tt1 = Tuple{Int,Int,Int,Int,Int}
println("A type of normal tuple called tt1: $(tt1)")
println("vtt2 == tt1 -> $(vtt2 == tt1)\n")

tuple1 = (1, 2, 3, 4, 5)
println("The tuple named tuple1: $(tuple1)")
println("isa(tuple1, vtt2) -> $(isa(tuple1, vtt2))")
tuple2 = (1, 2, 3, 4, 5, 6, 7, 8, 9, 0)
println("The tuple named tuple2: $(tuple2)")
println("isa(tuple1, vtt2) -> $(isa(tuple2, vtt2))\n")
