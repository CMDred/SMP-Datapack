#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0 1
execute store result score @s LinkID run scoreboard players add #Global LinkID 1
tellraw @s ["",{"text":"You","color":"red"},{"text":" ran out of time to link the","color":"gold"},{"text":" Shop Storage","color":"red"},{"text":"!","color":"gold"}]
scoreboard players reset @s LinkCD
scoreboard players reset @s LinkID
#------------------------------------------#