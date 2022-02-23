#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------DIFFICULTY SCALING-------------#
execute if entity @s[type=slime] at @s if predicate bcsmp:mobs/is_in_end unless data entity @s {Size:3} run tp @s ~ ~-300 ~
 

tag @s remove NewMobDelay
#------------------------------------------#

