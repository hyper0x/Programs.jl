# 示例的演示文件。
# - Julia version: 1.1.1
# - Author: haolin
# - Date: 2019-06-19

module MyArgs

include("args.jl")

end

name, _ = MyArgs.get_parameter("name", true)
if name == ""
    name = "handsome"
end

println("Hey, $(name)!")
