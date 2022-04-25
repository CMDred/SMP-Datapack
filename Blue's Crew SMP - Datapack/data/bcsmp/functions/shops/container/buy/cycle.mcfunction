#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
scoreboard players remove #AmountOfIterations Temp 1
data modify storage bcsmp:shops ThisItem set from storage bcsmp:shops PlayerInv[0]
#tellraw @s {"text":"============================"}
#tellraw @s {"text":"Cycle:"}
#tellraw @s [{"text":"Price Item: "}]
#tellraw @s [{"text":"   ID: "},{"nbt":"PriceItem.id","storage":"bcsmp:shops","color":"light_purple"}]
#tellraw @s [{"text":"   Count: "},{"nbt":"PriceItem.Count","storage":"bcsmp:shops","color":"light_purple"}]
#tellraw @s [{"text":"   NBT: "},{"nbt":"PriceItem.tag","storage":"bcsmp:shops","color":"light_purple"}]
#tellraw @s {"text":"Item Being Checked:"}
#tellraw @s [{"text":"   ID: "},{"nbt":"ThisItem.id","storage":"bcsmp:shops","color":"light_purple"}]
#tellraw @s [{"text":"   Count: "},{"nbt":"ThisItem.Count","storage":"bcsmp:shops","color":"light_purple"}]
#tellraw @s [{"text":"   NBT: "},{"nbt":"ThisItem.tag","storage":"bcsmp:shops","color":"light_purple"}]
#tellraw @s [{"text":"   Slot: "},{"nbt":"ThisItem.Slot","storage":"bcsmp:shops","color":"light_purple"}]
execute store success score #IsDifferent Temp run data modify storage bcsmp:shops ThisItem.id set from storage bcsmp:shops PriceItem.id
execute if score #IsDifferent Temp matches 1 run data modify storage bcsmp:shops PlayerInv append from storage bcsmp:shops PlayerInv[0]
execute if score #IsDifferent Temp matches 1 run data remove storage bcsmp:shops PlayerInv[0]
execute if score #IsDifferent Temp matches 0 run function bcsmp:shops/container/buy/id_match

execute if score #AmountOfIterations Temp matches 1.. run function bcsmp:shops/container/buy/cycle

execute if entity @s[tag=!EnoughOutcomeChecking] if score #AmountOfIterations Temp matches 0 run function bcsmp:shops/container/buy/buy_fail
execute if entity @s[tag=!EnoughOutcomeChecking] if score #AmountOfIterations Temp matches -1 run function bcsmp:shops/container/buy/check_if_enough_outcome

execute if entity @s[tag=EnoughOutcomeChecking] if score #AmountOfIterations Temp matches -1 run function bcsmp:shops/container/buy/modify_outcome_storage
execute if entity @s[tag=EnoughOutcomeChecking] if score #AmountOfIterations Temp matches 0 run function bcsmp:shops/container/buy/error3
#------------------------------------------#