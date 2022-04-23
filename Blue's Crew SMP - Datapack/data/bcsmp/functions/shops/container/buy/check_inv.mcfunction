#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
scoreboard players set #IncomeStorageSlots Temp 0
execute as @e[type=marker,tag=IncomeStorage] if score @s StorageID = @e[type=marker,tag=Container,sort=nearest,limit=1] StorageID run tag @s add ThisIncome
execute at @e[type=marker,tag=ThisIncome] store result score #IncomeStorageSlots Temp run data get block ~ ~ ~ Items
execute if entity @e[type=marker,tag=ThisIncome] unless score #IncomeStorageSlots Temp matches 27.. run function bcsmp:shops/container/buy/check_if_enough_outcome
execute if score #IncomeStorageSlots Temp matches 27.. run function bcsmp:shops/container/buy/error2
execute unless entity @e[type=marker,tag=ThisIncome] run function bcsmp:shops/container/buy/error4
tag @e remove ThisIncome
tag @e remove ThisOutcome
#------------------------------------------#