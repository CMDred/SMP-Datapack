#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
execute if entity @e[type=marker,tag=MoveAdvisor] run give @s[gamemode=survival] minecraft:villager_spawn_egg{tag:{EntityTag:{id:"minecraft:marker",Tags:["MoveAdvisor"]},MoveEgg:1b,display:{Name:'{"text":"Advisor Move Egg","color":"white","italic":false}'}}}
execute if entity @e[type=marker,tag=MoveInviteManager] run give @s[gamemode=survival] minecraft:villager_spawn_egg{tag:{EntityTag:{id:"minecraft:marker",Tags:["MoveInviteManager"]},MoveEgg:1b,display:{Name:'{"text":"Invite Manager Move Egg","color":"white","italic":false}'}}}
execute if entity @e[type=marker,tag=MoveShopManager] run give @s[gamemode=survival] minecraft:villager_spawn_egg{tag:{EntityTag:{id:"minecraft:marker",Tags:["MoveShopManager"]},MoveEgg:1b,display:{Name:'{"text":"Shop Manager Move Egg","color":"white","italic":false}'}}}
tellraw @s {"text":"The villager you're trying to move is not loaded!","color":"red"}
#------------------------------------------#
