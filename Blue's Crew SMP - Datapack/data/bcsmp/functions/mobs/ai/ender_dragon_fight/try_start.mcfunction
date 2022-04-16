#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
execute if entity @s[tag=SMPOwner] run function bcsmp:mobs/ai/ender_dragon_fight/start_cooldown
execute unless entity @s[tag=SMPOwner] run function bcsmp:mobs/ai/ender_dragon_fight/start_fail
scoreboard players reset @s StartCooldown
#------------------------------------------#