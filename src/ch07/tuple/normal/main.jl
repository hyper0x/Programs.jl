# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 普通的元组。
tt1 = Tuple{Real}
tt2 = Tuple{Integer}
tt3 = Tuple{Real,Char}
tt4 = Tuple{Integer,Char}
tt5 = Tuple{Real,AbstractChar}
tt6 = Tuple{Integer,AbstractChar}
tt7 = Tuple{Integer,String}

println("$(tt1) >: $(tt2) -> $(tt1 >: tt2)")
println("$(tt3) >: $(tt4) -> $(tt3 >: tt4)")
println("$(tt5) >: $(tt4) -> $(tt5 >: tt4)")
println("$(tt3) >: $(tt6) -> $(tt3 >: tt6)")
println("$(tt5) >: $(tt7) -> $(tt5 >: tt7)")
println("$(tt3) >: $(tt2) -> $(tt3 >: tt2)")
println("$(tt1) >: $(tt4) -> $(tt1 >: tt4)\n")

tuple1 = (125, 3.1, '中', "编程")
println("The tuple named tuple1: $(tuple1)")
println("The type of tuple1: $(typeof(tuple1))")
println("The first three element value of tuple1: $(tuple1[1:3])\n")

target1 = '中'
isequal1 = isequal(target1)
println("The position of \'$(target1)\' in tuple1: $(findfirst(isequal1, tuple1))")
index1_1 = 4
index1_2 = 2
println("The position of \'$(target1)\' in tuple1: $(findprev(isequal1, tuple1, index1_1))", 
        " (before index $(index1_1))")
println("The position of \'$(target1)\' in tuple1: $(findnext(isequal1, tuple1, index1_2))", 
        " (after index $(index1_2))\n")

println("Double tuple1: $((tuple1..., tuple1...))")
tuple2 = ([1, 2, 3], [4, 5, 6, 7])
println("The tuple named tuple2: $(tuple2)")
println("Double tuple2: $((tuple2..., tuple2...))\n")

println("isbitstype(Tuple{Int64,Float64,Char}) -> $(isbitstype(Tuple{Int64,Float64,Char}))")
println("isbitstype(Tuple{Float64,String}) -> $(isbitstype(Tuple{Float64,String}))")
println("isbitstype(Tuple{Real}) -> $(isbitstype(Tuple{Real}))\n")

tuple2_2 = (tuple2..., tuple2...)
println("The tuple named tuple2_2 based on tuple2: $(tuple2_2)")
println("Modify the value of the element in position tuple2[2][1]...")
tuple2[2][1] = tuple2[2][1] * 10
println("The tuple named tuple2: $(tuple2)")
println("The tuple named tuple2_2: $(tuple2_2)\n")
