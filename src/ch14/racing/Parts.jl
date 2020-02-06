# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

include("Conditions.jl")

module Tyres

using ..RacingCondition

export select_tyre # 显式导出以便扩展。

"""
    Tyre

代表赛车轮胎的抽象类型。
"""
abstract type Tyre end

"""
    SoftTyre

代表软胎的复合类型。建议干路面使用。
"""
struct SoftTyre <: Tyre end

"""
    MediumTyre

代表中性胎的复合类型。建议干路面使用。
"""
struct MediumTyre <: Tyre end

"""
    HardTyre

代表硬胎的复合类型。建议干路面使用。
"""
struct HardTyre <: Tyre end

"""
    IntermediateTyre

代表半雨胎的复合类型。建议湿（无积水）路面使用。
"""
struct IntermediateTyre <: Tyre end

"""
    WetTyre

代表全雨胎的复合类型。建议湿（有积水）路面使用。
"""
struct WetTyre <: Tyre end

"""
    select_tyre

泛化函数，用于轮胎的选择。
基于该函数的衍生方法应该依据传入的参数值返回某一类轮胎的实例。
"""
function select_tyre end

# 下面是一些基本的用于选择轮胎的衍生方法。
select_tyre() = SoftTyre()
select_tyre(weather::RacingCondition.Sunshine) = SoftTyre()
select_tyre(weather::T) where T <: RacingCondition.Rain = WetTyre()

end
