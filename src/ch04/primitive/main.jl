# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

primitive type MyUInt64 <: Unsigned 64 end

# 针对 MyUInt64 类型的实例构造方法。
# 用于根据一个 UInt64 类型的值构造出一个 MyUInt64 类型的值。
MyUInt64(x::UInt64) = reinterpret(MyUInt64, x)

# 针对 UInt64 类型的实例构造方法。
# 用于根据一个 MyUInt64 类型的值构造出一个 UInt64 类型的值。
UInt64(x::MyUInt64) = reinterpret(UInt64, x)

# 显示函数的新方法，针对 MyUInt64 类型。
Base.show(io::IO, x::MyUInt64) = print(io, UInt64(x))


"""
请注意，函数中的表达式`UInt64(666)`和`MyUInt64(x)`表示的都是对构造函数的调用。
构造函数与对应的类型同名，专用于类型的实例化。
构造函数也可以拥有衍生方法，以应对不同的构造原材料（如这里的`666`和`x`）。
比如，我们在前面用简易法定义了一个构造方法`MyUInt64(x::UInt64)`。
这个构造方法可以根据一个`UInt64`类型的值，构造出一个`MyUInt64`类型的实例。
正因为如此，下面的函数调用`MyUInt64(x)`才能够成功。
"""
x = UInt64(666)
y = MyUInt64(x)
println(UInt64(y))
