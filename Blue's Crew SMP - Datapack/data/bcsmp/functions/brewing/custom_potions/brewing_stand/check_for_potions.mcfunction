#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------CHECK BLOCK----------------#
execute unless block ~ ~ ~ minecraft:brewing_stand run kill @s
execute if entity @s[tag=BrewTime1s] at @s run function bcsmp:brewing/custom_potions/brew
execute if data block ~ ~ ~ {BrewTime:1s} if data block ~ ~ ~ Items[].tag.CustomPotionID if data block ~ ~ ~ {Items:[{Slot:3b,id:"minecraft:gunpowder"}]} run function bcsmp:brewing/custom_potions/brew_store_potions
#------------------------------------------#
