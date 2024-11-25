# Windows CMD Commands

## Basic Commands
- `cls` - Clear screen
- `md` or `mkdir` - Make directory
- `cd \` - Change directory
- `dir` - List all files and folders in current directory
- `dir /w \` - Show less details in wide list format

## Path Types
- **Absolute path:** "C:\teststudent"
- **Relative path:** ".\backup"

## Directory Navigation
- `.` - Current directory
- `..` - Parent of current directory
- `dir P*` - Show all files starting with capital P
- `dir P???????` - Find files with exact number of characters

## Getting Help
- `help | more` - Display help with pagination
- `help md` - Get help on the `md` command
- `md /?`, `dir /?` - Alternative way to get command help

## Command Types
- **Internal commands:** Built into the shell (e.g., `cmd.exe`)
- **External commands:** Have their own executable files (e.g., in "C:\WINDOWS\system32")

## Command History
- Commands are not case-sensitive
- Commands executed are saved in history buffer
- `F7` - Show command history
- `F8` - Search for matching command in history
- `F9` - Run command by number from history

## Displaying Messages
- `echo` - Display messages
  - `echo hello`
  - `echo hello > hello.txt`
  - `type hello.txt` - Display content of hello.txt
- `echo off` - Turn off command display
- `echo on` - Turn on command display

## Copying Files and Directories
- `copy hello.txt hello.bak` - Copy a file
- `fc hello.txt hello.bak` - File compare their content

## Wildcards in Filenames
- `*` - Matches any sequence of characters
- `?` - Matches any single character
- `copy *.bak backup` - Copy all `.bak` files to the backup directory

## Renaming Files and Directories
- `ren backup\*.bak *.old` - Rename all `.bak` files to `.old`
- `mkdir tmp` - Create a directory
- `ren tmp temp` - Rename directory
- `dir *.` - Show files

## Moving Files and Directories
- `move backup\*.old temp` - Move `.old` files to temp directory
- `move temp backup` - Move temp directory to backup directory

## Removing Files and Directories
- `del hello.old` - Delete a file
- `del *.*` - Delete all files in current directory
- `rd` - Remove directory (directory must be empty)

## Input, Output, and Error Redirection
- **Standard input (stdin):** Keyboard input
- **Standard output (stdout):** Console output
- **Standard error (stderr):** Error messages to console
- **Redirection:**
  - `dir | more` - Pipe output to another command
  - `sort < data.txt` - Take input from a file
  - `echo hello > hello.txt` - Send output to a file
  - `echo world >> hello.txt` - Append output to a file
  - `sort < data.txt > sorted.txt` - Input from a file and output to another file
  - `sort no_such_file 2> error.txt` - Send error output to a file

## Redirecting Errors
- `type data.txt 1>data.bak 2>error.txt`
  - `1>` Standard output redirection
  - `2>` Standard error redirection

## Redirecting to Devices
- **Devices:**
  - `LPTn`: Parallel printer
  - `PRN`: Serial printer
  - `CON`: Keyboard and console
  - `NUL`: Null device (discard unwanted output)
- **Examples:**
  - `copy CON new_filename.txt` - Copy from keyboard to file
  - `dir > CON` - Send output to console
  - `dir > NUL` - Suppress output

## Using Multiple Commands
- `abc1 & abc2` - Run commands sequentially
- `abc1 && abc2` - Run second command if first is successful
- `abc1 || abc2` - Run second command if first fails
- `(hostname & echo running on & ver)` - Group multiple commands

## Special Characters in Echo Command
- `< > ( ) & | ^` - Use caret `^` as the escape character

## Sort Command
- `sort [options] [file]` - Sort lines in a file or from input
  - Example: `sort data.txt`
  - Example: `sort < data.txt > sorted.txt`
- **Options:**
  - `/r` - Reverse sort order
  - `+n` - Start sorting at column n

## Find Command
- `find [options] "text" [file]` - Search for specific text in a file or input
  - Example: `find "hello" file.txt`
- **Options:**
  - `/i` - Ignore case
  - `/v` - Display lines that do not contain the text
  - `/n` - Display line numbers with matching lines