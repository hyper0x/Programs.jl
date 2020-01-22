# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

include("Cars.jl")

using .RacingCondition
using .Tyres
using .RacingCar

# 天气现在是晴朗的。
weather = RacingCondition.Sunshine()
println("Weather: $(nameof(typeof(weather)))")
# 我们的赛车开始在赛道上试练。
car1 = RacingCar.F1("Ferrari", select_tyre(weather))
drive(car1)
println()

"""
    check

根据比赛条件检视赛车，并在必要时更换零件。
最后，返回一个结果值，用于表示是否已更换零件。
"""
function check(car::RacingCar.F1, weather::W)::Bool where W <: RacingCondition.Weather
    println("Checking car...")
    res = false
    new_tyre = select_tyre(weather)
    if new_tyre != car.tyre
        info =  "from $(nameof(typeof(car.tyre))) to $(nameof(typeof(new_tyre)))"
        println("The $(car.team)'s car is replacing tyres... ($(info))")
        car.tyre = new_tyre
        res = true
    else
println("No need to replace parts.")
    end
    res
end

# 现在下起了毛毛雨。
weather = RacingCondition.Drizzle()
println("Weather: $(nameof(typeof(weather)))")
# 检视赛车，并在必要时更换零件。
if check(car1, weather) 
    drive(car1)
end
println()

# 扩展 select_tyre 函数，专门应对毛毛雨的天气。
import .Tyres.select_tyre
select_tyre(weather::RacingCondition.Drizzle) = Tyres.IntermediateTyre()

# 现在依然下着毛毛雨。
println("Weather: $(nameof(typeof(weather)))")
# 再次检视赛车，并在必要时更换零件。
if check(car1, weather) 
    drive(car1)
end
println()

# 现在下起了大雨。
weather = RacingCondition.HeavyRain()
println("Weather: $(nameof(typeof(weather)))")
# 检视赛车，并在必要时更换零件。
if check(car1, weather) 
    drive(car1)
end
println()
