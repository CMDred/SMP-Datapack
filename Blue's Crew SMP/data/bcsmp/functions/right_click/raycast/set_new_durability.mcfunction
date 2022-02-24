#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------RAYCAST------------------#
execute store result score #ItemDamage Temp run data get block 29999977 1 29832 Items[0].tag.Damage
scoreboard players operation #Damage Temp = #ItemDamage Temp
execute store result block 29999977 1 29832 Items[0].tag.ItemDamage int 1 run scoreboard players get #Damage Temp
scoreboard players operation #Damage Temp *= #Constant100 Temp
scoreboard players operation #Damage Temp /= #MaxDurability Temp
execute if score #Damage Temp matches 0 if score #ItemDamage Temp matches 1.. run scoreboard players set #Damage Temp 1
execute store result block 29999977 1 29832 Items[0].tag.Damage int 1 run scoreboard players get #Damage Temp
#------------------------------------------#
