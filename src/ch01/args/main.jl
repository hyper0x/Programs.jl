# 示例的演示文件。
# - Julia version: 1.2.0
# - Author: HaoLin
# - Date: 2020-01-01

module MyArgs

include("args.jl")

end

name, _ = MyArgs.get_parameter("name", true)
if name == ""
    name = "handsome"
end

println("Hey, $(name)!")
