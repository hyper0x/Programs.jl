# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 浅拷贝。
array_orig1 = [2, 4, 6, 8, 10]
println("The array named array_orig1: $(array_orig1)")
array_copy1 = copy(array_orig1)
println("The array named array_copy1: $(array_copy1)\n")

array_copy1[1] = 12
println("array_copy1[1] = 12")
println("The array named array_copy1: $(array_copy1)")
println("The array named array_orig1: $(array_orig1)\n")

mutable struct Person
    name::String
    age::UInt8
    extra
end

p1 = Person("Robert", 37, "Beijing")
println("p1 -> $(p1)")
p2 = Person("Andres", 32, "Madrid")
println("p2 -> $(p2)")
p3 = Person("Eric", 28, "Paris")
println("p3 -> $(p3)\n")

array_orig2 = Person[p1, p2, p3]
println("array_orig2 = Person[p1, p2, p3]")
println("The array named array_orig2: $(array_orig2)")
array_copy2 = copy(array_orig2)
println("The array named array_copy2: $(array_copy2)\n")

array_copy2[3] = Person("Mark", 45, "New York")
println("""array_copy2[3] = Person("Mark", 45, "New York")""")
println("The array named array_copy2: $(array_copy2)")
println("The array named array_orig2: $(array_orig2)\n")

array_copy2[1].age = 38
println("array_copy2[1].age = 38")
println("The array named array_copy2: $(array_copy2)")
println("The array named array_orig2: $(array_orig2)\n")

p1.age = 25
println("p1.age = 25")
println("The array named array_orig2: $(array_orig2)")
println("The array named array_copy2: $(array_copy2)\n")


a1 = [1, 3, 5]
println("The array named a1: $(a1)")
a2 = [2, 4, 6]
println("The array named a2: $(a2)")
array_orig3 = [a1, a2]
println("array_orig3 = [a1, a2]")
println("The array named array_orig3: $(array_orig3)")
array_copy3 = copy(array_orig3)
println("The array named array_copy3: $(array_copy3)\n")

a1[2] = 30
println("a1[2] = 30")
println("The array named array_orig3: $(array_orig3)")
println("The array named array_copy3: $(array_copy3)\n\n")


# 深拷贝。
array_deepcopy3 = deepcopy(array_orig3)
println("The array named array_deepcopy3: $(array_deepcopy3)\n")

a1[2] = 60
println("a1[2] = 60")
println("The array named array_orig3: $(array_orig3)")
println("The array named array_copy3: $(array_copy3)")
println("The array named array_deepcopy3: $(array_deepcopy3)\n")

a3 = [7, 9, 11]
println("The array named a3: $(a3)")
a4 = [8, 10, 12]
println("The array named a4: $(a4)")
array_orig4 = [[a1, a3], [a2, a4]]
println("array_orig4 = [[a1, a3], [a2, a4]]")
println("The array named array_orig4: $(array_orig4)")
array_deepcopy4 = deepcopy(array_orig4)
println("The array named array_deepcopy4: $(array_deepcopy4)\n")

a4[1] = 80
println("a4[1] = 80")
println("The array named array_orig4: $(array_orig4)")
println("The array named array_deepcopy4: $(array_deepcopy4)\n")

array_orig4[2][2][1] = 82
println("array_orig4[2][2][1] = 82")
println("The array named array_orig4: $(array_orig4)")
println("The array named array_deepcopy4: $(array_deepcopy4)\n")
