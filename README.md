# Codes-for-Games
### These are the programs that I have coded for the games I play!
### List of games and programs:

- Minecraft/
  - Compact_Claustrophobia/
    - opencomputers/
      - template.lua
        - Just a template for every program.
      - thomaslib.lua
        - Includes functions that makes creating each program easier.
          - goTo() - makes the robot go to a specific co-ordinate.
          - changeDirection() - makes the robot face a specific direction as efficiently as possible.
          - goForward() - ensures that the robot moves forward.
          - goBackward() - ensures that the robot moves backward.
          - goUp() - ensures that the robot moves upward.
          - goDown() - ensures that the robot moves downward.
          - placeBlock() - ensures that the robot places a block.
          - suckItem(amount) - ensures that the robot sucks an amount of items.
          - buildRight() - Makes the robot place a block to the right of the block its facing.
          - buildLeft() - Makes the robot place a block to the left of the block its facing.
          - buildUp() - Makes the robot place a block above the block its facing.
      - epearl.lua
        - Uses an in-game robot to create n amounts of enderpearls.
        - Usage: ./epearl \[n\]
          - n = the amount of enderpearls to create.