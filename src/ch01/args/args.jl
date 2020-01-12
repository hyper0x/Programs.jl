# 提供与命令参数有关功能的文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

"""
    get_parameter(key::String, first::Bool=true)

根据参数获取指定的命令行参数值。
参数`key`代表命令行参数的名称。参数`first`代表一种获取策略。
如果参数`first`的值为`true`，那么无论有多少个同名的命令行参数，都只获取第一个。否则只获取最后一个。
"""
function get_parameter(key::String, first::Bool = true)
    if length(ARGS) == 0
        return "", -1
    end

    prefix = "--" * key
    key_end = 2 + length(key)
    value_begin = key_end + 2

    myargs = filter(a->a[1:key_end] == prefix ? true : false, ARGS)
    values = map(a->a[value_begin:end], myargs)

    first ? (values[1], 1) : (values[end], length(values))
end
