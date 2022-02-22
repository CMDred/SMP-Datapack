scoreboard players operation #RemainingPlaytime Temp = @s PlaytimeSeconds

# HOURS
scoreboard players set #Divisor Temp 3600
scoreboard players operation #PlaytimeHours Temp = #RemainingPlaytime Temp
scoreboard players operation #PlaytimeHours Temp /= #Divisor Temp
scoreboard players operation #RemainingPlaytime Temp %= #Divisor Temp

# MINUTES
scoreboard players set #Divisor Temp 60
scoreboard players operation #PlaytimeMinutes Temp = #RemainingPlaytime Temp
scoreboard players operation #PlaytimeMinutes Temp /= #Divisor Temp
scoreboard players operation #StoredMinutes Temp = #PlaytimeMinutes Temp
scoreboard players operation #RemainingPlaytime Temp %= #Divisor Temp

# SECONDS
scoreboard players operation #PlaytimeSeconds Temp = #RemainingPlaytime Temp

execute if score #PlaytimeHours Temp matches 1.. run tellraw @s ["",{"text":"Your playtime: ","color":"green"},{"score":{"objective":"Temp","name":"#PlaytimeHours"},"color":"green"},{"text":"h ","color":"green"},{"score":{"objective":"Temp","name":"#PlaytimeMinutes"},"color":"green"},{"text":"m ","color":"green"},{"score":{"objective":"Temp","name":"#PlaytimeSeconds"},"color":"green"},{"text":"s","color":"green"}]

execute if score #PlaytimeMinutes Temp matches 1.. if score #PlaytimeHours Temp matches ..0 run tellraw @s ["",{"text":"Your playtime: ","color":"green"},{"score":{"objective":"Temp","name":"#PlaytimeMinutes"},"color":"green"},{"text":"m ","color":"green"},{"score":{"objective":"Temp","name":"#PlaytimeSeconds"},"color":"green"},{"text":"s","color":"green"}]

execute if score #PlaytimeMinutes Temp matches ..0 if score #PlaytimeHours Temp matches ..0 run tellraw @s ["",{"text":"Your playtime: ","color":"green"},{"score":{"objective":"Temp","name":"#PlaytimeSeconds"},"color":"green"},{"text":"s","color":"green"}]

scoreboard players reset @s GetPlaytime

scoreboard players reset #RemainingPlaytime Temp
scoreboard players reset #Divisor Temp
scoreboard players reset #PlaytimeHours Temp
scoreboard players reset #PlaytimeMinutes Temp
scoreboard players reset #PlaytimeSeconds Temp