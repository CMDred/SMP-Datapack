#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute as @e[type=marker,tag=OutcomeStorage] if score @s StorageID = @e[type=marker,tag=Container,sort=nearest,limit=1] StorageID run tag @s add ThisOutcome
execute if entity @e[type=marker,tag=ThisOutcome] run function bcsmp:shops/container/buy/run_outcome_check_cycle
execute unless entity @e[type=marker,tag=ThisOutcome] run function bcsmp:shops/container/buy/error5
tag @e remove ThisOutcome
#------------------------------------------#