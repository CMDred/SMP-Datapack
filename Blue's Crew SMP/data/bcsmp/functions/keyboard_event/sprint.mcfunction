#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------EVENT------------------#
tag @s add MoveUpdate
tag @s add Sprinting
scoreboard players remove @s Energy 1
execute if score @s Energy matches ..0 run function stats:energy/exhausted

# scoreboard players add @s FootstepsAmb 1
# execute if score @s FootstepsAmb matches 5.. run function islands:ambience/footsteps/check

scoreboard players reset @s Sprint
#------------------------------------------#