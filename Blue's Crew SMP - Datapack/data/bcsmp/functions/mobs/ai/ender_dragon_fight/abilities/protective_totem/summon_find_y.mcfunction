#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
tp @e[type=slime,tag=ProtectiveTotem] ~ ~-300 ~
# Loop until it hits a block so that it always spawns on top of the portal, no matter its Y level
execute unless block ~ ~-1 ~ air run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/summon
execute if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function bcsmp:mobs/ai/ender_dragon_fight/abilities/protective_totem/summon_find_y
#------------------------------------------#
