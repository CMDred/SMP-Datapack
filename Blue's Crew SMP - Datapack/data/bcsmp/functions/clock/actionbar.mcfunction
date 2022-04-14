#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------CALCULATE TIME---------------#
scoreboard players set #CalculatedTime Temp 1

execute store result score #Daytime Temp run time query daytime
scoreboard players operation #Daytime Temp /= #Constant10 Temp
scoreboard players add #Daytime Temp 600
execute if score #Daytime Temp matches 2400.. run scoreboard players remove #Daytime Temp 2400

scoreboard players operation #DaytimeMinutes Temp = #Daytime Temp
scoreboard players operation #DaytimeMinutes Temp %= #Constant100 Temp
scoreboard players operation #DaytimeMinutes Temp *= #Constant60 Temp
scoreboard players operation #DaytimeMinutes Temp /= #Constant100 Temp

scoreboard players operation #DaytimeMinute1 Temp = #DaytimeMinutes Temp
scoreboard players operation #DaytimeMinute1 Temp /= #Constant10 Temp
scoreboard players operation #DaytimeMinute2 Temp = #DaytimeMinutes Temp
scoreboard players operation #DaytimeMinute2 Temp %= #Constant10 Temp

scoreboard players operation #DaytimeHours Temp = #Daytime Temp
scoreboard players operation #DaytimeHours Temp /= #Constant100 Temp

scoreboard players operation #DaytimeHour1 Temp = #DaytimeHours Temp
scoreboard players operation #DaytimeHour1 Temp /= #Constant10 Temp
scoreboard players operation #DaytimeHour2 Temp = #DaytimeHours Temp
scoreboard players operation #DaytimeHour2 Temp %= #Constant10 Temp
#-------------CHECK WEATHER----------------#
execute if predicate bcsmp:temperature/weather/clear run scoreboard players set #Weather Temp 1
execute if predicate bcsmp:temperature/weather/rain run scoreboard players set #Weather Temp 2
execute if predicate bcsmp:temperature/weather/thunder run scoreboard players set #Weather Temp 3
#---------------DISPLAY TIME---------------#
execute if score #Weather Temp matches 1 run title @a[predicate=bcsmp:holding_clock] actionbar ["",{"text":"☀  ","color":"yellow"},{"score":{"name":"#DaytimeHour1","objective":"Temp"}},{"score":{"name":"#DaytimeHour2","objective":"Temp"}},":",{"score":{"name":"#DaytimeMinute1","objective":"Temp"}},{"score":{"name":"#DaytimeMinute2","objective":"Temp"}}]
execute if score #Weather Temp matches 2 run title @a[predicate=bcsmp:holding_clock] actionbar ["",{"text":"🌧  ","color":"gray"},{"score":{"name":"#DaytimeHour1","objective":"Temp"}},{"score":{"name":"#DaytimeHour2","objective":"Temp"}},":",{"score":{"name":"#DaytimeMinute1","objective":"Temp"}},{"score":{"name":"#DaytimeMinute2","objective":"Temp"}}]
execute if score #Weather Temp matches 3 run title @a[predicate=bcsmp:holding_clock] actionbar ["",{"text":"⚡  ","color":"yellow","bold":true},{"score":{"name":"#DaytimeHour1","objective":"Temp"}},{"score":{"name":"#DaytimeHour2","objective":"Temp"}},":",{"score":{"name":"#DaytimeMinute1","objective":"Temp"}},{"score":{"name":"#DaytimeMinute2","objective":"Temp"}}]
#------------------------------------------#
