#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
loot give @s loot bcsmp:mobs/ender_dragon_fight/give_breath_back
execute if score @s PointsObtainedWithDragonBreath matches 64.. run function bcsmp:mobs/ai/ender_dragon_fight/points/breath_above_64
#------------------------------------------#