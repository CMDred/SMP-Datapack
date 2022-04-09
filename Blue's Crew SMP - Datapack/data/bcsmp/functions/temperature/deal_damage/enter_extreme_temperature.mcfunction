#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------TIMER-------------------#
tag @s add ExtremeTemperature
scoreboard players set @s TemperatureDamageTimer 20

execute if score @s DisplayTemperature matches ..-10 at @s run particle cloud ~ ~1 ~ 0.2 0 0.2 0.05 10
execute if score @s DisplayTemperature matches ..-10 at @s run playsound minecraft:ui.toast.out master @s ~ ~ ~ 2 1 1

execute if score @s TooHot matches 0.. at @s run particle smoke ~ ~1 ~ 0.2 0.25 0.2 0.06 10
execute if score @s TooHot matches 0.. at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.35 1.15 0.35
#------------------------------------------#
