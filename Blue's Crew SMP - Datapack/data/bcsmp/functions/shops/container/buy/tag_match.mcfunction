#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
#tellraw @s {"text":"NBT matched! Calculating Count."}
execute store result score #SlotCount Temp run data get storage bcsmp:shops ThisItem.Count
scoreboard players operation #FoundCount Temp += #SlotCount Temp
#tellraw @s [{"text":"Found "},{"score":{"name": "#FoundCount","objective": "Temp"},"color":"light_purple"},{"text":" items so far."}]
execute if score #FoundCount Temp >= #NeededCount Temp run function bcsmp:shops/container/buy/reached_count
execute unless score #FoundCount Temp >= #NeededCount Temp run data remove storage bcsmp:shops PlayerInv[0]
#------------------------------------------#