#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------EFFECTS-----------------#
scoreboard players set @s ViewPotionEffects 0
scoreboard players enable @s ViewPotionEffects
scoreboard players set #Divisor Temp 60
tellraw @s ["\n",{"text":"Your active Potion Effects:","color":"green"}]
execute at @s run playsound minecraft:item.book.page_turn master @s
#--------------HEAT RESISTANCE-------------#
scoreboard players operation #DurationMinutes Temp = @s HeatResistanceDuration
scoreboard players operation #DurationMinutes Temp /= #Divisor Temp

scoreboard players operation #DurationSeconds Temp = @s HeatResistanceDuration
scoreboard players operation #DurationMinutes Temp *= #Divisor Temp
scoreboard players operation #DurationSeconds Temp -= #DurationMinutes Temp
scoreboard players operation #DurationMinutes Temp /= #Divisor Temp

execute if score #DurationSeconds Temp matches ..9 run tellraw @s ["",{"text":"Heat Resistance: ","color":"blue"},{"score":{"name":"#DurationMinutes","objective":"Temp"}},":0",{"score":{"name":"#DurationSeconds","objective":"Temp"}}]
execute if score #DurationSeconds Temp matches 10.. run tellraw @s ["",{"text":"Heat Resistance: ","color":"blue"},{"score":{"name":"#DurationMinutes","objective":"Temp"}},":",{"score":{"name":"#DurationSeconds","objective":"Temp"}}]
#--------------FROST RESISTANCE-------------#
scoreboard players operation #DurationMinutes Temp = @s FrostResistanceDuration
scoreboard players operation #DurationMinutes Temp /= #Divisor Temp

scoreboard players operation #DurationSeconds Temp = @s FrostResistanceDuration
scoreboard players operation #DurationMinutes Temp *= #Divisor Temp
scoreboard players operation #DurationSeconds Temp -= #DurationMinutes Temp
scoreboard players operation #DurationMinutes Temp /= #Divisor Temp

execute if score #DurationSeconds Temp matches ..9 run tellraw @s ["",{"text":"Frost Resistance: ","color":"blue"},{"score":{"name":"#DurationMinutes","objective":"Temp"}},":0",{"score":{"name":"#DurationSeconds","objective":"Temp"}}]
execute if score #DurationSeconds Temp matches 10.. run tellraw @s ["",{"text":"Frost Resistance: ","color":"blue"},{"score":{"name":"#DurationMinutes","objective":"Temp"}},":",{"score":{"name":"#DurationSeconds","objective":"Temp"}}]
#------------------------------------------#
