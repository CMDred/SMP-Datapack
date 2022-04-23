#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
summon item ~ ~10 ~ {Tags:["NameGet"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=NameGet,limit=1] Item set from storage bcsmp:shops SoldItem
execute store result score #Count Temp run data get storage bcsmp:shops SoldItem.Count
execute unless data storage bcsmp:shops SoldItem.tag.display.Name run tellraw @s ["",{"text":"You bought ","color":"gold"},{"selector":"@e[tag=NameGet,limit=1]","color":"red"},{"text":" x","color":"gray"},{"score":{"name":"#Count","objective": "Temp"},"color":"gray"},{"text":"!","color":"gold"}]
execute if data storage bcsmp:shops SoldItem.tag.display.Name run tellraw @s ["",{"text":"You bought ","color":"gold"},{"nbt":"SoldItem.tag.display.Name","interpret":true,"storage":"bcsmp:shops","color":"red"},{"text":" x","color":"gray"},{"score":{"name":"#Count","objective": "Temp"},"color":"gray"},{"text":"!","color":"gold"}]
kill @e[tag=NameGet]
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2 1
execute as @e[type=marker,tag=Container,sort=nearest,limit=1] run scoreboard players set @s BuyCooldown 3
execute unless score #AmountOfIterations Temp matches -2 run function bcsmp:shops/container/buy/get_new_inv
#------------------------------------------#