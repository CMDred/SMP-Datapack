#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------DISPLAY TEMPERATURE------------#
execute if score @s TooHot matches ..999 run title @s actionbar ["",{"text":"☀ ","color":"yellow"},{"score":{"name":"#BeforeComma","objective":"DisplayTemperature"},"color":"#FDC93A"},{"text":".","color":"#FDC93A"},{"score":{"name":"#AfterComma","objective":"DisplayTemperature"},"color":"#FDC93A"},{"text":"°","color":"#FDC93A"}]
execute if score @s TooHot matches 1000..1499 run title @s actionbar ["",{"text":"☀ ","color":"yellow"},{"score":{"name":"#BeforeComma","objective":"DisplayTemperature"},"color":"#FFA742"},{"text":".","color":"#FFA742"},{"score":{"name":"#AfterComma","objective":"DisplayTemperature"},"color":"#FFA742"},{"text":"°","color":"#FFA742"}]
execute if score @s TooHot matches 1500.. run title @s actionbar ["",{"text":"☀ ","color":"yellow"},{"score":{"name":"#BeforeComma","objective":"DisplayTemperature"},"color":"#FF6D2E"},{"text":".","color":"#FF6D2E"},{"score":{"name":"#AfterComma","objective":"DisplayTemperature"},"color":"#FF6D2E"},{"text":"°","color":"#FF6D2E"}]

execute unless entity @s[tag=ExtremeTemperature] run function bcsmp:temperature/deal_damage/enter_extreme_temperature
#------------------------------------------#
