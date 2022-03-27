##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------POTIONS----------------#
execute if block ~ ~-1 ~ brewing_stand positioned ~ ~-1 ~ run function bcsmp:brewing/upgrade_potion
#lightning bolt's position is always one higher than the block it strikes
execute if block ~ ~-2 ~ brewing_stand positioned ~ ~-2 ~ run function bcsmp:brewing/upgrade_potion
#a lightning rod would make it another block higher, not important enough to check that there is a lightning rod above