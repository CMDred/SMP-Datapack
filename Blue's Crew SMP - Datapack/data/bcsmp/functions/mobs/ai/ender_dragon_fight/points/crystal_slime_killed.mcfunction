#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------AI TICK------------------#
function bcsmp:mobs/ai/ender_dragon_fight/spawn_crystal_slime
execute unless entity @e[type=ender_dragon,distance=..10] run summon lightning_bolt
#------------------------------------------#