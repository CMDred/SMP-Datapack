#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
data modify storage bcsmp:shops SetItem set from block ~ ~ ~ Items[{Slot:25b}]
function bcsmp:shops/container/menu/return_item/25
data modify entity @s data.Trades[3].buy set from storage bcsmp:shops SetItem

summon item ~ ~10 ~ {Tags:["NameGet"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=NameGet,limit=1] Item set from storage bcsmp:shops SetItem
execute store result score #Count Temp run data get storage bcsmp:shops SetItem.Count
execute unless data storage bcsmp:shops SetItem.tag.display.Name run tellraw @a[scores={ContainerItems=1..},sort=nearest,limit=1] ["",{"text":"You have set ","color":"white"},{"selector":"@e[type=item,tag=NameGet,limit=1]","color":"yellow"},{"text":" x","color":"gray"},{"score":{"name":"#Count","objective": "Temp"},"color":"gray"},{"text":" as the cost for the 4th slot!","color":"white"}]
execute if data storage bcsmp:shops SetItem.tag.display.Name run tellraw @a[scores={ContainerItems=1..},sort=nearest,limit=1] ["",{"text":"You have set ","color":"white"},{"nbt":"SetItem.tag.display.Name","interpret":true,"storage":"bcsmp:shops","color":"yellow"},{"text":" x","color":"gray"},{"score":{"name":"#Count","objective": "Temp"},"color":"gray"},{"text":" as the cost for the 4th slot!","color":"white"}]
kill @e[type=item,tag=NameGet]
#------------------------------------------#