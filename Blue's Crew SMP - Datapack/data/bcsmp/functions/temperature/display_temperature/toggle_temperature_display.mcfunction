#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
scoreboard players set @s ToggleTemperatureDisplay 0
scoreboard players enable @s ToggleTemperatureDisplay

scoreboard players add @s TemperatureDisplay 1
execute if score @s TemperatureDisplay matches 2 run scoreboard players set @s TemperatureDisplay 0

execute at @s run playsound entity.experience_orb.pickup master @s
execute if score @s TemperatureDisplay matches 0 run tellraw @s ["",{"text":"BlueSMP >> ","color":"blue"},{"text":"Disabled ","bold":true,"color":"red"},{"text":"Temperature Display","color":"white"}]
execute if score @s TemperatureDisplay matches 1 run tellraw @s ["",{"text":"BlueSMP >> ","color":"blue"},{"text":"Enabled ","bold":true,"color":"green"},{"text":"Temperature Display","color":"white"}]

#------------------------------------------#
