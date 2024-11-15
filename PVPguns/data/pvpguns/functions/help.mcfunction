# A command to explain all the functions
tellraw @a ["",{"text":"--------------","color":"gold"},{"text":"Welcome to PVPGuns","color":"yellow"},{"text":"--------------","color":"gold"}]
tellraw @a ["",{"text":"pvpguns:tick","color":"blue"},{"text":", "},{"text":"pvpguns:load","color":"blue"},{"text":", "},{"text":"pvpguns:wbshrink","color":"blue"},{"text":" & "},{"text":"pvpguns:death","color":"blue"},{"text":" can be ignored as they are used automatically."}]
tellraw @a {"text":"---------------------------------------------","color":"gold"}
tellraw @a ["",{"text":"pvpguns:gameprep","color":"green","clickEvent":{"action":"suggest_command","value":"function pvpguns:gameprep"}},{"text":" needs to be used after people have selected their kits (kit command coming soon)"}]
tellraw @a {"text":"---------------------------------------------","color":"gold"}
tellraw @a ["",{"text":"pvpguns:gamereset","color":"green","clickEvent":{"action":"suggest_command","value":"pvpguns:gamereset"}},{"text":" is to be used after a player has won the game"}]
tellraw @a {"text":"---------------------------------------------","color":"gold"}
tellraw @a ["",{"text":"pvpguns:gamestart","color":"green","clickEvent":{"action":"suggest_command","value":"pvpguns:gamestart"}},{"text":" is to be used after pvpguns:gameprep. Running this command starts the game."}]
tellraw @a {"text":"---------------------------------------------","color":"gold"}