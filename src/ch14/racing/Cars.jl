# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

include("Parts.jl")

module RacingCar

using ..Tyres

export drive # 显式导出以便扩展。

"""
    Car

代表赛车的抽象类型。
"""
abstract type Car end

"""
    F1

代表 F1 比赛用车的可变复合类型。
"""
mutable struct F1 <: Car
    team::String
    tyre::Tyres.Tyre
end

"""
    drive

泛化函数，用于驱动赛车。
基于该函数的衍生方法应该驱动传入的赛车实例，并打印出相应的信息。
"""
function drive end

# 下面是相应的衍生方法。
function drive(car::F1)
    team = car.team == "" ? "<Unknown>" : car.team
    info =  "tyre: $(nameof(typeof(car.tyre)))"
    println("The $(team)'s car racing on the track! ($(info))")
end

end