#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2]
execute if entity @s[tag=IncomeStorage] run loot spawn ~ ~ ~ loot bcsmp:shops/income_storage
execute if entity @s[tag=OutcomeStorage] run loot spawn ~ ~ ~ loot bcsmp:shops/outcome_storage
kill @s
#------------------------------------------#