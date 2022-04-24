#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
summon item ~ ~10 ~ {Tags:["NameGet"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=NameGet,limit=1] Item set from storage bcsmp:shops PriceItem
scoreboard players operation #Count Temp = #ArrivingItemCount Temp
execute unless data storage bcsmp:shops PriceItem.tag.display.Name run tellraw @s ["",{"text":"You do not have enough ","color":"red"},{"selector":"@e[type=item,tag=NameGet,limit=1]","color":"yellow"},{"text":"!","color":"red"}]
execute if data storage bcsmp:shops PriceItem.tag.display.Name run tellraw @s ["",{"text":"You do not have enough ","color":"red"},{"nbt":"PriceItem.tag.display.Name","interpret":true,"storage":"bcsmp:shops","color":"yellow"},{"text":"!","color":"red"}]
kill @e[type=item,tag=NameGet]
playsound block.note_block.pling master @s ~ ~ ~ 1 0 1
scoreboard players set #AmountOfIterations Temp -3
#------------------------------------------#
