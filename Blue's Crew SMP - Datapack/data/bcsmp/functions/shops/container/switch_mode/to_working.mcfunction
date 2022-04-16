#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
tellraw @a[tag=Clicker] ["",{"text":"You","color":"red"},{"text":" switched this","color":"gold"},{"text":" Shop Container","color":"red"},{"text":"'s mode to","color":"gold"},{"text":" WORKING","color":"red"},{"text":" mode","color":"gold"},{"text":"!","color":"gold"}]
tag @s add WorkingMode
tag @s remove EditMode
tag @s add Changed
function bcsmp:shops/container/menu/container_main
#------------------------------------------#