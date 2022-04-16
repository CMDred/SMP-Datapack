#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
tellraw @a[tag=Clicker] ["",{"text":"You","color":"red"},{"text":" switched this","color":"gold"},{"text":" Shop Container","color":"red"},{"text":"'s mode to","color":"gold"},{"text":" EDIT","color":"red"},{"text":" mode","color":"gold"},{"text":"!","color":"gold"}]
tag @s remove WorkingMode
tag @s add EditMode
function bcsmp:shops/container/menu/container_main
#------------------------------------------#