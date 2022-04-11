#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#

#-------------------INIT-------------------#
execute in minecraft:overworld run forceload add 29999977 29832
# forceload end's 0 0 or else the Armor Stands for the leaderboard won't spawn
execute in minecraft:the_end run forceload add 0 0

scoreboard players set #lcg Constant 1103515245
scoreboard objectives add RandMath dummy
execute unless score #lcg RandMath matches ..0 unless score #lcg RandMath matches 1.. run function bcsmp:random/uuid_reset

scoreboard objectives add Temp dummy
scoreboard objectives add JoinGame minecraft.custom:minecraft.leave_game
scoreboard objectives add Death deathCount
scoreboard objectives add JoinGame minecraft.custom:minecraft.leave_game
scoreboard objectives add RightClick minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard players set #Constant-1 Temp -1
scoreboard players set #Constant10 Temp 10
scoreboard players set #Constant13 Temp 13
scoreboard players set #Constant33 Temp 33
scoreboard players set #Constant50 Temp 50
scoreboard players set #Constant100 Temp 100
scoreboard players set #Constant400 Temp 400
scoreboard players set #Constant10000 Temp 10000
#--------------MODULE RELOADS--------------#
function bcsmp:brewing/load
function bcsmp:right_click/load
function bcsmp:advancements/load
function bcsmp:mobs/load
function bcsmp:temperature/load
function bcsmp:factions/load
function bcsmp:setup_smp/load
#-----------------MESSAGE------------------#
tellraw @a ["",{"text":"BlueSMP =>","color":"green","bold":true},{"text":" Reload Successful.","color":"gray","italic":true}]
#------------------------------------------#
