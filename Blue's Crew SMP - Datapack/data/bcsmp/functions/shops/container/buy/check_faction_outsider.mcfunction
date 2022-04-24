#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#ffffff"}'} if entity @s[team=!white] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#e67417"}'} if entity @s[team=!gold] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#d52bff"}'} if entity @s[team=!dark_red] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#1fd6f2"}'} if entity @s[team=!aqua] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#ffcb2e"}'} if entity @s[team=!yellow] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#52c718"}'} if entity @s[team=!green] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#e087cb"}'} if entity @s[team=!light_purple] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#383838"}'} if entity @s[team=!dark_gray] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#828282"}'} if entity @s[team=!gray] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#006653"}'} if entity @s[team=!dark_aqua] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#7e008c"}'} if entity @s[team=!dark_purple] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#2800c9"}'} if entity @s[team=!blue] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#451f09"}'} if entity @s[team=!dark_blue] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#125716"}'} if entity @s[team=!dark_green] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#ff1c1c"}'} if entity @s[team=!red] run tag @s add ApplyIncrease
execute if data entity @e[type=marker,tag=Container,sort=nearest,limit=1] data.FactionOfTheVendor{Color:'{"text":"","color":"#0d0d0d"}'} if entity @s[team=!black] run tag @s add ApplyIncrease

execute if entity @s[tag=ApplyIncrease] run scoreboard players operation #ArrivingItemCount Temp *= #Constant120 Temp
execute if entity @s[tag=ApplyIncrease] run scoreboard players operation #ArrivingItemCount Temp /= #Constant100 Temp
tag @e[tag=ApplyIncrease] remove ApplyIncrease
#------------------------------------------#