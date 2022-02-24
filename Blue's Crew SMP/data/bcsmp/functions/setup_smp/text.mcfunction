##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
gamerule sendCommandFeedback false
tellraw @s {"text":"\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n","bold":true,"color":"green"}

tellraw @s ["",{"text":"---------== ","bold":true,"color":"green"},{"text":"SMP Setup","underlined":true,"color":"green"},{"text":" ==---------","color":"green"}]

tellraw @s ["",{"text":"\n- Vanilla Rules -\n","underlined":true,"color":"dark_green"}]

execute if score #PhantomSpawning GameRules matches 1 run tellraw @s ["",{"text":"Phantom Spawning :","color":"dark_green"},{"text":" [TRUE]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/phantom_spawning/true"}},{"text":" [FALSE]","color":"gray","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/phantom_spawning/false"}}]
execute if score #PhantomSpawning GameRules matches 0 run tellraw @s ["",{"text":"Phantom Spawning :","color":"dark_green"},{"text":" [TRUE]","color": "gray","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/phantom_spawning/true"}},{"text":" [FALSE]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/phantom_spawning/false"}}]

execute if score #Raids GameRules matches 1 run tellraw @s [{"text":"Raids :","color":"dark_green"},{"text":" [ENABLED]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/raids/true"}},{"text":" [DISABLED]","color":"gray","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/raids/false"}}]
execute if score #Raids GameRules matches 0 run tellraw @s [{"text":"Raids :","color":"dark_green"},{"text":" [ENABLED]","color": "gray","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/raids/true"}},{"text":" [DISABLED]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/raids/false"}}]

execute if score #WanderingTraders GameRules matches 1 run tellraw @s [{"text":"Spawn Wandering Traders :","color":"dark_green"},{"text":" [TRUE]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/wandering_traders/true"}},{"text":" [FALSE]","color":"gray","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/wandering_traders/false"}}]
execute if score #WanderingTraders GameRules matches 0 run tellraw @s [{"text":"Spawn Wandering Traders :","color":"dark_green"},{"text":" [TRUE]","color": "gray","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/wandering_traders/true"}},{"text":" [FALSE]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function bcsmp:setup_smp/set_rules/wandering_traders/false"}}]
#------------------------------------------#