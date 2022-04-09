#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
# find entity who shot
execute store result score #SearchUUID0 Temp run data get entity @s Owner[0]
execute at @s as @e[distance=..1.65] run function bcsmp:advancements/you_broke/check_uuid
tag @s add YB_Registered
#------------------------------------------#

