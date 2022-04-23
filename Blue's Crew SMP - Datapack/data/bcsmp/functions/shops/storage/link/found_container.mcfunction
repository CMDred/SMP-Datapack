#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute unless score @a[tag=Clicker,limit=1] LinkCD matches 1.. run function bcsmp:shops/storage/link/link_fail
execute if score @a[tag=Clicker,limit=1] LinkCD matches 1.. run function bcsmp:shops/storage/link/link_success
#------------------------------------------#