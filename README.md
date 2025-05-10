# Codes-for-Games
#### These are the programs that I have coded for the games I play!
### List of games and programs:
- [Minecraft/](Minecraft/)
  - [CompactClaustrophobia/](Minecraft/CompactClaustrophobia/)
    - [opencomputers/](Minecraft/CompactClaustrophobia/opencomputers/)
      - [template.lua](Minecraft/CompactClaustrophobia/opencomputers/template.lua) | [raw](Minecraft/CompactClaustrophobia/opencomputers/template.lua?raw=1)
        - Just a template for every program.
      - [thomaslib.lua](Minecraft/CompactClaustrophobia/opencomputers/thomaslib.lua) | [raw](Minecraft/CompactClaustrophobia/opencomputers/thomaslib.lua?raw=1)
        - Includes functions that makes creating each program easier.
          - goForward() - ensures that the robot moves forward.
          - goBackward() - ensures that the robot moves backward.
          - goUp() - ensures that the robot moves upward.
          - goDown() - ensures that the robot moves downward.
          - placeBlock() - ensures that the robot places a block.
          - suckItem(amount) - ensures that the robot sucks an amount of items.
          - changeDirection() - makes the robot face a specific direction as efficiently as possible.
          - goTo() - makes the robot go to a specific co-ordinate.
          - buildRight() - Makes the robot place a block to the right of the block its facing.
          - buildLeft() - Makes the robot place a block to the left of the block its facing.
          - buildUp() - Makes the robot place a block above the block its facing.
          - buildRowRight() - Makes the robot create a row to the right.
          - buildRowLeft() - Makes the robot create a row to the left.
      - [epearl.lua](Minecraft/CompactClaustrophobia/opencomputers/epearl.lua) | [raw](Minecraft/CompactClaustrophobia/opencomputers/epearl.lua?raw=1)
        - Uses an in-game robot to create n amounts of enderpearl(s).
        - Usage: `./epearl [n]`
          - n = the amount of enderpearls to create.
      - [machine_normal.lua](Minecraft/CompactClaustrophobia/opencomputers/machine_normal.lua) | [raw](Minecraft/CompactClaustrophobia/opencomputers/machine_normal.lua?raw=1)
        - Uses an in-game robot to create n amounts of normal compact machine(s).
        - Usage: `./machine_normal [n]`
          - n = the amount of normal compact machines to create.
      - [machine_wall.lua](Minecraft/CompactClaustrophobia/opencomputers/machine_wall.lua) | [raw](Minecraft/CompactClaustrophobia/opencomputers/machine_wall.lua?raw=1)
        - Uses an in-game robot to create n amounts of compact machine wall(s).
        - Usage: `./machine_wall [n]`
          - n = the amount of compact machine wall(s) to create.
  - [ProjectOzone2/](Minecraft/ProjectOzone2/)
    - [computercraft](Minecraft/ProjectOzone2/computercraft/)
      - [StartingOut.md](Minecraft/ProjectOzone2/computercraft/StartingOut.md)
        - Contains one-line codes to easily start out.
      - [wget.lua](Minecraft/ProjectOzone2/computercraft/wget.lua) | [raw](Minecraft/ProjectOzone2/computercraft/wget.lua?raw=1)
        - The wget unix command (used to download other scripts).
        - Relies on startup.lua OR current working directory.
        - Usage: `wget <url> [output]`
          - url = link to the file to download (i.e. raw GitHub file).
          - output = name of the output file (can leave blank to parse URL for name).
        - Creation:
          - Different methods:
            1. Read and use [StartingOut.md](Minecraft/ProjectOzone2/computercraft/StartingOut.md) (easiest).
            2. Manually Write
                - Create file with `edit /bin/wget`.
                - Copy code from wget.lua into wget.
            3. PasteBin
                - Upload to [PasteBin](https://pastebin.com/).
                - Use command in-game on computer to download: `pastebin get <url> <filename>`.
                  - url = pastebin link.
                  - filename = name of the output file.
      - [startup.lua](Minecraft/ProjectOzone2/computercraft/startup.lua) | [raw](Minecraft/ProjectOzone2/computercraft/startup.lua?raw=1)
        - Runs when the computer starts up.
        - If needed: change `/disk/wget` to the directory you keep your wget file in.
        - Creation:
          1. Use wget (get wget [here](Minecraft/ProjectOzone2/computercraft/StartingOut.md)).
          2. Manually create.
              - Use `edit /startup` to create a file in the home directory.
                - Copy code from startup.lua into startup.
              - Run the command `reboot` to restart the computer.
      - [treechopper.lua](Minecraft/ProjectOzone2/computercraft/treechopper.lua) | [raw](Minecraft/ProjectOzone2/computercraft/treechopper.lua?raw=1)
        - Simple turtle AI for chopping trees at a singular spot in front of it.
          - Relies on a different turtle with [treeplanter.lua](Minecraft/ProjectOzone2/computercraft/treeplanter.lua) running.
        - Usage: `treechopper`
      - [treeplanter.lua](Minecraft/ProjectOzone2/computercraft/treeplanter.lua) | [raw](Minecraft/ProjectOzone2/computercraft/treeplanter.lua)
        - Simple turtle AI for planting trees at a singular spot in front of it.
          - Pairs well with [treechopper.lua](Minecraft/ProjectOzone2/computercraft/treechopper.lua).
        - Usage: `treeplanter`
      - [compressor.lua](Minecraft/ProjectOzone2/computercraft/compressor.lua) | [raw](Minecraft/ProjectOzone2/computercraft/compressor.lua)
        - Compresses items in a 3x3 crafting grid (i.e. Cobblestone -> Compressed Cobblestone).
        - Usage: `compressor`
