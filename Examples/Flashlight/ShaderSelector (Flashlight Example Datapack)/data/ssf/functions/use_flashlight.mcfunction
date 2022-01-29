scoreboard players remove @s[scores={battery=1..}] battery 1
scoreboard players operation #temp battery = @s battery
scoreboard players operation #temp battery %= #20 battery
execute if score #temp battery matches 1 run scoreboard players add @s[scores={ssf.blue=..4}] ssf.blue 1
execute if score #temp battery matches 1 run function ssf:shader/load

execute if score @s battery matches ..0 run function ssf:toggle_flashlight