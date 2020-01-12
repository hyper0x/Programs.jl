# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

# 代表抽屉的类型。
mutable struct Drawer{T}
    content::T
end

# 代表展柜的类型。
mutable struct Showcase{T}
    drawer1::Drawer{T}
    drawer2::Drawer{T}
end

# 代表首饰的类型。
abstract type Jewelry end

# 代表项链的类型。
struct Necklace <: Jewelry
    # 此处忽略项链的具体特征。
end

# 代表戒指的类型。
struct Ring <: Jewelry
    # 此处忽略戒指的具体特征。
end

# 代表首饰店的类型。
mutable struct JewelryShop{T <: Jewelry}
    showcase1::Showcase{Necklace}
    showcase2::Showcase{Ring}
    showcase3::Showcase{Jewelry}
    showcase4::Showcase{T}
end


showcase1 = Showcase{Necklace}(Drawer(Necklace()), Drawer(Necklace()))
showcase2 = Showcase{Ring}(Drawer(Ring()), Drawer(Ring()))
showcase3 = Showcase{Jewelry}(Drawer{Jewelry}(Necklace()), Drawer{Jewelry}(Ring()))
showcase4_1 = Showcase{Jewelry}(Drawer{Jewelry}(Necklace()), Drawer{Jewelry}(Ring()))
showcase4_2 = Showcase{Ring}(Drawer(Ring()), Drawer(Ring()))

jewelryShop1 = JewelryShop{Jewelry}(showcase1, showcase2, showcase3, showcase4_1)
jewelryShop2 = JewelryShop{Ring}(showcase1, showcase2, showcase3, showcase4_2)


# 用于生成首饰描述的函数。
describe(jewelry::Jewelry) = "A $(typeof(jewelry))"

# 用于生成抽屉描述的函数。
# 第一种写法。
# describe(drawer::Drawer{Jewelry}) = "$(describe(drawer.content))"
# describe(drawer::Drawer{Necklace}) = "$(describe(drawer.content))"
# describe(drawer::Drawer{Ring}) = "$(describe(drawer.content))"
# 第二种写法。
# describe(drawer::Drawer) = "$(describe(drawer.content))"
# 第三种写法。
describe(drawer::Drawer{<:Jewelry}) = "$(describe(drawer.content))"

"""
    describe(shop::JewelryShop)::String

用于生成店铺描述的函数。
"""
function describe(shop::JewelryShop)::String
    text = """
            Showcase 1: $(describe(shop.showcase1.drawer1)); $(describe(shop.showcase1.drawer2))
            Showcase 2: $(describe(shop.showcase2.drawer1)); $(describe(shop.showcase2.drawer2))
            Showcase 3: $(describe(shop.showcase3.drawer1)); $(describe(shop.showcase3.drawer2))
            Showcase 4: $(describe(shop.showcase4.drawer1)); $(describe(shop.showcase4.drawer2))
          """
end


println("Jewelry Shop 1:\n$(describe(jewelryShop1))")
println("Jewelry Shop 2:\n$(describe(jewelryShop2))")
