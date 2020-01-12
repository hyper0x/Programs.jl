# 示例的演示文件。
# - Julia version: 1.3.1
# - Author: HaoLin
# - Date: 2020-04-01

println("What's your name?")
name = readline(stdin) # 程序会等候你在终端中输入名字并回车。

if name == ""
    title = "handsome"
elseif name == "Robert"
    title = "my master"
else
    title = "dear " * name
end

println("Hi, $(title)!\n")

is_walk(action) = (print("wa>"); action == "walk")
is_rain(weather) = (print("ra>"); weather == "rain")
is_sleep(action) = (print("sl>"); action == "sleep")
is_sunny(action) = (print("su>"); action == "sunny")

println("How's the weather today?")
weather = readline(stdin) # 程序会等候你在终端中输入天气并回车。

println("What do you want to do?")
action = readline(stdin) # 程序会等候你在终端中输入动作并回车。

if is_walk(action) && is_rain(weather)
    prompt = "Don't forget to bring an umbrella."
elseif is_sleep(action) || is_sunny(weather)
    prompt = "The idea looks good."
else 
    prompt = "Cool!"
end

println("\n$(prompt)\n")

if action == "ride" || action == "drive" 
    println("How is the traffic now?")
    road_condition = readline(stdin) # 程序会等候你在终端中输入路况并回车。
    if weather != "sunny" && 
        (road_condition != "good" 
        && (action == "ride" || action == "drive"))
        prompt = "Please pay attention to traffic safety."
    end
    println("$(prompt)\n")
end

println("Good luck!\n")