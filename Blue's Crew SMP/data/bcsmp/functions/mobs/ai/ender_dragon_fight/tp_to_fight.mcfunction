#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
advancement grant @s only bcsmp:mobs/ender_dragon_fight/enter_end
execute in the_end run tp @s 100 50 0
tellraw @s {"text":"You were teleported to the battlefield! Good luck!","color":"dark_purple"}
scoreboard players reset @s TpToEnd
#------------------------------------------#