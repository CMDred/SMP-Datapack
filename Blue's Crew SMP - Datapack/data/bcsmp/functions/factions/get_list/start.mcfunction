#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tellraw @p {"text":"--------FACTIONS LIST-------","color":"gray","bold":true}
playsound block.note_block.flute master @s ~ ~ ~ 1 1 1
execute store result score #AmountOfIterations Temp run data get storage bcsmp:factions Factions
function bcsmp:factions/get_list/cycle
tellraw @p {"text":"---------------------------","color":"gray","bold":true}
scoreboard players reset @s GetFactionList
#------------------------------------------#