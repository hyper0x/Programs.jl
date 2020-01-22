# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

module RacingCondition

"""
    Weather

代表天气情况的抽象类型。
"""
abstract type Weather end

"""
    Sunshine

代表晴天的复合类型。
"""
struct Sunshine <: Weather end

"""
    Rain

代表雨天的抽象类型。
"""
abstract type Rain <: Weather end

"""
    Drizzle

代表毛毛雨的复合类型。
"""
struct Drizzle <: Rain end

"""
    NormalRain

代表普通降雨的复合类型。
"""
struct NormalRain <: Rain end

"""
    HeavyRain

代表大雨的复合类型。
"""
struct HeavyRain <: Rain end

"""
    TorrentialRain

代表暴雨的复合类型。
"""
struct TorrentialRain <: Rain end

end