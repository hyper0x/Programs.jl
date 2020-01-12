# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

"""
    get_bmi(weight::Int, height::Float64)::Float64

用于获取 BMI（身体质量指数）函数。
参数`weight`代表体重，单位是 kg（公斤）。参数`height`代表身高，单位是 m（米）。
公式：`BMI = weight / (height * height)`。
"""
function get_bmi(weight::Int, height::Float64)::Float64
    if weight <= 0 || weight > 500
        throw(DomainError(weight, "Invalid weight! (range: (0, 500])"))
    elseif height <= 0.0 || height > 3.0
        throw(DomainError(height, "Invalid height! (range: (0.0, 3.0])"))
    end
    return weight / height^2
end


bmi = 0;

try 
    global bmi = get_bmi(65, 1.78)
catch e
    println("WARNING: captured an exception: $e")
finally
    global bmi
    println("BMI: $(bmi)")
end

try 
    global bmi = 0
    bmi = get_bmi(0, 1.78)
finally
    global bmi
    println("BMI: $(bmi)")
end
