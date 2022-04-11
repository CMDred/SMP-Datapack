#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
particle minecraft:lava ~ ~ ~ 0.2 0.1 0.2 0.1 10
particle minecraft:falling_lava ~ ~ ~ 0.45 0.5 0.45 1 20
particle minecraft:dripping_lava ~ ~ ~ 0.15 0.15 0.15 1 7
playsound minecraft:block.lava.ambient block @a ~ ~ ~ 0.25 2
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 0.4 1.5
execute as @e[distance=..3.5,type=!potion] run data modify entity @s Fire set value 50s
effect give @e[distance=..3.5] instant_damage
scoreboard players set @a[distance=..3.5] ConsumedItemTimer 13
scoreboard players set @a[distance=..3.5] ConsumedItemType 2
#------------------------------------------#
