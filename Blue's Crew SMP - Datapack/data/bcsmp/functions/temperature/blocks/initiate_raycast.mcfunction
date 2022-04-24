#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
# #Reach * 0.25 = reach in blocks
# reach in blocks / 0.25 = #Reach
scoreboard players set #FoundPlayer Temp 0
clone ~ ~ ~ ~ ~ ~ 29999977 1 29832

scoreboard players set #Reach Temp 20
execute positioned ~0.5 ~ ~ facing entity @s feet run function bcsmp:temperature/blocks/raycast
execute if score #FoundPlayer Temp matches 0 run scoreboard players set #Reach Temp 20
execute if score #FoundPlayer Temp matches 0 positioned ~-0.5 ~ ~ facing entity @s feet run function bcsmp:temperature/blocks/raycast
execute if score #FoundPlayer Temp matches 0 run scoreboard players set #Reach Temp 20
execute if score #FoundPlayer Temp matches 0 positioned ~ ~0.5 ~ facing entity @s feet run function bcsmp:temperature/blocks/raycast
execute if score #FoundPlayer Temp matches 0 run scoreboard players set #Reach Temp 20
execute if score #FoundPlayer Temp matches 0 positioned ~ ~-0.5 ~ facing entity @s feet run function bcsmp:temperature/blocks/raycast
execute if score #FoundPlayer Temp matches 0 run scoreboard players set #Reach Temp 20
execute if score #FoundPlayer Temp matches 0 positioned ~ ~ ~0.5 facing entity @s feet run function bcsmp:temperature/blocks/raycast
execute if score #FoundPlayer Temp matches 0 run scoreboard players set #Reach Temp 20
execute if score #FoundPlayer Temp matches 0 positioned ~ ~ ~-0.5 facing entity @s feet run function bcsmp:temperature/blocks/raycast

execute if score #FoundPlayer Temp matches 1 run function bcsmp:temperature/blocks/found_player
#------------------------------------------#
