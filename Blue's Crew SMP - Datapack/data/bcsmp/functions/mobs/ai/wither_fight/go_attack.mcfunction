#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#

#------------------ATTACK------------------#
execute unless entity @e[tag=PlayerTarget,distance=..50] run function bcsmp:mobs/ai/wither_fight/attack
execute unless entity @e[tag=PlayerTarget,distance=..3] run function bcsmp:mobs/ai/wither_fight/move
execute if entity @e[tag=PlayerTarget,distance=..3] run function bcsmp:mobs/ai/wither_fight/attack
schedule function bcsmp:mobs/ai/wither_fight/check_attack 1
#------------------------------------------#