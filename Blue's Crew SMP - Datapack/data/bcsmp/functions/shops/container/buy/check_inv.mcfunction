#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
data remove storage bcsmp:shops PlayerInv[{Slot:-106b}]
execute store result score #AmountOfIterations Temp run data get storage bcsmp:shops PlayerInv
execute store result score #NeededCount Temp run data get storage bcsmp:shops PriceItem.Count
data remove storage bcsmp:shops PriceItem.tag.ContainerMenu
#tellraw @s ["",{"text":"Cycling started!"}]
#tellraw @s [{"text":"Iterations: "},{"score":{"name": "#AmountOfIterations","objective": "Temp"},"color":"light_purple"}]
#tellraw @s [{"text":"Price Item: "}]
#tellraw @s [{"text":"   ID: "},{"nbt":"PriceItem.id","storage":"bcsmp:shops","color":"light_purple"}]
#tellraw @s [{"text":"   Count: "},{"nbt":"PriceItem.Count","storage":"bcsmp:shops","color":"light_purple"}]
#tellraw @s [{"text":"   NBT: "},{"nbt":"PriceItem.tag","storage":"bcsmp:shops","color":"light_purple"}]

scoreboard players set #FoundCount Temp 0
execute if score #AmountOfIterations Temp matches 1.. run function bcsmp:shops/container/buy/cycle
#------------------------------------------#