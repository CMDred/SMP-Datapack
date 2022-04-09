#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------DRIPPING SOUNDS--------------#
execute if score @s WetTimer matches 1..7999 run playsound minecraft:block.water.ambient master @a[distance=..5] ~ ~ ~ 0.25 1.7 0.25
execute if score @s WetTimer matches 8001..23999 run playsound minecraft:block.water.ambient master @a[distance=..5] ~ ~ ~ 0.45 1.5 0.45
execute if score @s WetTimer matches 24001..39999 run playsound minecraft:block.water.ambient master @a[distance=..5] ~ ~ ~ 0.65 1.3 0.65
#------------------------------------------#
