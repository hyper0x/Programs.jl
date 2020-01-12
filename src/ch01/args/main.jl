# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

module MyArgs

include("args.jl")

end

name, _ = MyArgs.get_parameter("name", true)
if name == ""
    name = "handsome"
end

println("Hey, $(name)!")
