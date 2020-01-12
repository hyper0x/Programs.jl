# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 代表商品的类型。
abstract type Goods end

# 代表首饰的类型。
abstract type Jewelry <: Goods end

# 代表项链的类型。
struct Necklace <: Jewelry end

# 代表戒指的类型。
struct Ring <: Jewelry end

# 代表储物空间的抽象类型。
abstract type StorageSpace{T} end

# 代表抽屉的类型。
mutable struct Drawer{T} <: StorageSpace{T}
    content::T
end

# 代表展柜的类型。
mutable struct Showcase{T <: Goods} <: StorageSpace{T}
    drawer1::Drawer{T}
    drawer2::Drawer{T}
end


showcase_jewelry = Showcase{Jewelry}(Drawer{Jewelry}(Necklace()), Drawer{Jewelry}(Ring()))

"""
    describe(showcase::Showcase)::String

用于生成展柜描述的函数。
"""
function describe(showcase::Showcase)::String
    text = "A $(typeof(showcase.drawer1.content)); A $(typeof(showcase.drawer2.content))"
end

println("The jewelry showcase: $(describe(showcase_jewelry))\n")


# 代表玩具的类型。
abstract type Toy <: Goods end

# 代表毛绒玩具的类型。
struct StuffedToy <: Toy end

# 代表电动玩具的类型。
struct ElectricToy <: Toy end

# 代表玩具箱的抽象类型。
abstract type ToyBox{T <: Toy} <: StorageSpace{T} end

# 代表纸板箱的类型。
mutable struct Carton{T <: Goods} <: ToyBox{T}
    content::T
end


# 下面这行代码会引发一个类型错误。
# toy_box = Carton{Goods}(StuffedToy())

toy_box = Carton{Toy}(StuffedToy())

"""
    describe(toy_box::ToyBox)::String

用于生成玩具箱描述的函数。
"""
function describe(toy_box::ToyBox)::String
    text = "A $(typeof(toy_box.content)) ($(typeof(toy_box)))"
end

println("The toy box: $(describe(toy_box))")
