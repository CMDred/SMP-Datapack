#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------CONSUME------------------#
advancement revoke @s only bcsmp:brewing/consume_powder_snow_bottle
tag @s[gamemode=!creative] add ConsumedItem
execute store success score @s ConsumeItem if predicate bcsmp:brewing/holding_powder_snow_bottle_mainhand
scoreboard players reset @s ConsumeItem2
execute if score @s ConsumeItem matches 1 store result score @s ConsumeItem2 run data get entity @s SelectedItemSlot
execute if score @s ConsumeItem matches 1 unless entity @s[gamemode=creative] run loot replace entity @s weapon.mainhand loot bcsmp:brewing/reinforced_glass_bottle
execute if score @s ConsumeItem matches 0 unless entity @s[gamemode=creative] run loot replace entity @s weapon.offhand loot bcsmp:brewing/reinforced_glass_bottle
schedule function bcsmp:brewing/custom_potions/reinforced_glass_bottle/consume/next_tick_scheduled 1t
#---------------TEMPERATURE----------------#
scoreboard players set @s ConsumedItemTimer 15
scoreboard players set @s ConsumedItemType 1
#------------------------------------------#
