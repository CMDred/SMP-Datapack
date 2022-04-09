#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
execute if score #FightOnGoing Temp matches 1.. run advancement grant @s only bcsmp:mobs/ender_dragon_fight/enter_end
execute if score #FightOnGoing Temp matches 1.. in the_end run tp @s 100 50 0
execute if score #FightOnGoing Temp matches 1.. run tellraw @s {"text":"You were teleported to the battlefield! Good luck!","color":"dark_purple"}
execute unless score #FightOnGoing Temp matches 1.. run tellraw @s {"text":"No fight is happening!","color":"red"}
scoreboard players reset @s TpToEnd
#------------------------------------------#