#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------EVENT------------------#
execute if entity @s[tag=AimsAtRightBlockWithRightItem] run function bcsmp:right_click/actions/pre_check

execute if predicate bcsmp:brewing/holding_reinforced_glass_bottle run function bcsmp:brewing/custom_potions/reinforced_glass_bottle/pre_check

execute if predicate bcsmp:shops/holding_shop_tool at @s run function bcsmp:shops/tools/clicked

execute if predicate bcsmp:other/holding_creeperator at @s run function bcsmp:right_click/actions/creeper-ator-3000/clicked

scoreboard players reset @s RightClick
#------------------------------------------#
