#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
tellraw @a[tag=Clicker] [{"text":"You switched this ","color":"white"},{"text":"Shop Container","color":"yellow"},{"text":"'s mode to ","color":"white"},{"text":"WORKING","color":"green"},{"text":" mode!","color":"white"}]
tag @s add WorkingMode
tag @s remove EditMode
tag @s add Changed
function bcsmp:shops/container/menu/container_main
#------------------------------------------#
