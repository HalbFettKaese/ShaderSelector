execute as @a[scores={wfoas=1..,battery=1..}] at @s run function ssf:toggle_flashlight
execute as @a[scores={ssf.green=1..}] at @s run function ssf:use_flashlight
scoreboard players set @a wfoas 0