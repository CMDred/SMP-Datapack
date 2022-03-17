##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------TICK-------------------#
#Modules
function bcsmp:right_click/main
function bcsmp:advancements/main
function bcsmp:mobs/main
function bcsmp:temperature/main

# Events
execute as @a[scores={RightClick=1..}] at @s run function bcsmp:keyboard_event/right_click

#Damage when sneaking on magma_block
execute as @a[predicate=bcsmp:is_sneaking] at @s if predicate bcsmp:on_magma_block run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:20b,Amplifier:5b,Duration:1,ShowParticles:0b}]}
#------------------------------------------#
