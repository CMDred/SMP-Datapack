#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
tellraw @a[tag=Clicker] [{"text":"You switched this ","color":"white"},{"text":"Shop Container","color":"yellow"},{"text":"'s mode to ","color":"white"},{"text":"EDIT","color":"green"},{"text":" mode!","color":"white"}]
tag @s remove WorkingMode
tag @s add EditMode
function bcsmp:shops/container/menu/container_main
#------------------------------------------#
