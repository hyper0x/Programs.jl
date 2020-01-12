# 提供多个不同级别模块的文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

module Parent # 父级模块。

  module Utils # 工具模块。
    hi() = "Hi"
    bye() = "Bye"
  end

  module Child  # 子级模块。
    import ..Utils

    hi_c(name) = println("$(Utils.hi()), $(name)!")
    bye_c(name) = println("$(Utils.bye()), $(name)!")

    export hi_c
  end

  using .Child
end

import .Parent
Parent.hi_c("Robert")
Parent.Child.bye_c("Robert")
