#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0 1
execute store result score @s LinkID run scoreboard players add #Global LinkID 1
tellraw @s [{"text":"You ran out of time to link the ","color":"red"},{"text":"Shop Storage","color":"yellow"},{"text":"!","color":"red"}]
scoreboard players reset @s LinkCD
scoreboard players reset @s LinkID
#------------------------------------------#
