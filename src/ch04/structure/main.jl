# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 代表用户的不可变复合类型。
struct User
    name::String
    reg_year::UInt16
    extra
end

# 代表个人的可变复合类型。
mutable struct Person
    name::String
    age::UInt8
    extra
end

u1 = User("Robert", 2000, "something")
u2 = User("Robert", UInt16(2000), "something")
println("u1 -> $(u1)")
println("u2 -> $(u2)")
println("u1 === u2 -> $(u1 === u2)")

p1 = Person("Robert", 30, "something")
p1.age = 37
p2 = Person("Robert", 37, "something")
println("p1 -> $(p1)")
println("p2 -> $(p2)")
println("p1 === p2 -> $(p1 === p2)")
