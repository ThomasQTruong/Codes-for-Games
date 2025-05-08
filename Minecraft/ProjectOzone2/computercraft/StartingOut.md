## Info
- By Thomas Truong
- One line code (copy and paste-able) to obtain wget.lua.
- Only need **one version**.

## Codes
### Version 1 (Command-Line)
1. Enter lua mode on the in-game computer using: `lua`
2. Copy and paste code: `response = http.get("https://raw.githubusercontent.com/ThomasQTruong/Codes-for-Games/refs/heads/master/Minecraft/ProjectOzone2/computercraft/wget.lua"); contents = response.readAll(); response.close(); file = fs.open(shell.resolve("wget"), "w"); file.write(contents); file.close()`
3. Exit using: `exit()`
4. Use `ls` and you should see a file called **wget**

### Version 2 (Lua File):
1. Create a file on the in-game computer using `edit <file_name>`
2. Copy and paste code: `local response = http.get("https://raw.githubusercontent.com/ThomasQTruong/Codes-for-Games/refs/heads/master/Minecraft/ProjectOzone2/computercraft/wget.lua"); local contents = response.readAll(); response.close(); local file = fs.open(shell.resolve("wget"), "w"); file.write(contents); file.close()`
3. Press Ctrl to open prompt at the bottom
    - Save (optional)
    - Run file
    - Exit file
4. Use `ls` and you should see a file called **wget**
