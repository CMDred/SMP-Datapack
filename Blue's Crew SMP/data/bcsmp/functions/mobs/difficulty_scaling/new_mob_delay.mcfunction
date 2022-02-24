#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------DIFFICULTY SCALING-------------#
execute at @s if entity @s[type=slime,tag=!DestroyChecker,tag=!ProtectiveTotem] if predicate bcsmp:mobs/is_in_end at @s run tp @s ~ ~-300 ~
tag @s remove NewMobDelay
#------------------------------------------#

