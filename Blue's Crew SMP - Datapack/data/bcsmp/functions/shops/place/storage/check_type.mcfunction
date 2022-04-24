#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute if entity @s[tag=IncomeStorage] run function bcsmp:shops/place/storage/income/place
execute if entity @s[tag=OutcomeStorage] run function bcsmp:shops/place/storage/outcome/place
tag @e[tag=NewStorage] remove NewStorage
#------------------------------------------#
