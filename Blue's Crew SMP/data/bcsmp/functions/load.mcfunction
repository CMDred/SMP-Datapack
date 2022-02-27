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
scoreboard objectives add RightClick minecraft.used:minecraft.warped_fungus_on_a_stick
#--------------MODULE RELOADS--------------#
function bcsmp:right_click/load
function bcsmp:advancements/load
function bcsmp:mobs/load
function bcsmp:factions/load
#-----------------MESSAGE------------------#
tellraw @a ["",{"text":"BlueSMP =>","color":"green","bold":true},{"text":" Reload Successful.","color":"gray","italic":true}]
#------------------------------------------#