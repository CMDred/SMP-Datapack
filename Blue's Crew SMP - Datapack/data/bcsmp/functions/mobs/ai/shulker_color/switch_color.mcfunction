#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
scoreboard players set #HasChanged Temp 0
execute unless score #HasChanged Temp matches 1.. if data entity @s {Color:6b} run function bcsmp:mobs/ai/shulker_color/colors/red
execute unless score #HasChanged Temp matches 1.. if data entity @s {Color:14b} run function bcsmp:mobs/ai/shulker_color/colors/orange
execute unless score #HasChanged Temp matches 1.. if data entity @s {Color:1b} run function bcsmp:mobs/ai/shulker_color/colors/green
execute unless score #HasChanged Temp matches 1.. if data entity @s {Color:13b} run function bcsmp:mobs/ai/shulker_color/colors/lime
execute unless score #HasChanged Temp matches 1.. if data entity @s {Color:5b} run function bcsmp:mobs/ai/shulker_color/colors/blue
execute unless score #HasChanged Temp matches 1.. if data entity @s {Color:11b} run function bcsmp:mobs/ai/shulker_color/colors/cyan
execute unless score #HasChanged Temp matches 1.. if data entity @s {Color:9b} run function bcsmp:mobs/ai/shulker_color/colors/light_blue
execute unless score #HasChanged Temp matches 1.. if data entity @s {Color:3b} run function bcsmp:mobs/ai/shulker_color/colors/purple
execute unless score #HasChanged Temp matches 1.. if data entity @s {Color:10b} run function bcsmp:mobs/ai/shulker_color/colors/magenta
execute unless score #HasChanged Temp matches 1.. if data entity @s {Color:2b} run function bcsmp:mobs/ai/shulker_color/colors/pink
scoreboard players reset @s Temp
#------------------------------------------#