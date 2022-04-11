#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
particle minecraft:snowflake ~ ~ ~ 0.35 0.35 0.35 0.1 15
playsound minecraft:block.powder_snow.fall block @a ~ ~ ~ 1 1.25
execute as @e[distance=..3.5] run data modify entity @s Fire set value 0s
scoreboard players set @a[distance=..3.5] ConsumedItemTimer 12
scoreboard players set @a[distance=..3.5] ConsumedItemType 1
#------------------------------------------#
