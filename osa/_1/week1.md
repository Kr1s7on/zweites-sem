# Week 1 Windows CMD Commands

## Basic Commands

- `cls` - clear screen
- `md` or `mkdir` - make directory
- `cd \` - change directory
- `dir` - list all files and folders in directory
- `dir /w \` - shows less details in wide list format

### Paths

- **Absolute:** `C:\teststudent`
- **Relative:** `.\backup`

### Directory Navigation

- `.` - current directory
- `..` - parent of current directory

### Wildcards

- `dir P*` - show all that starts with capital P
- `dir P???????` - finds exact amount in string

## Getting Help

- `help | more`
- `help md` - help on the `md` command
- `md /?` or `dir /?`

## Internal and External Commands

- **Internal:** Built into shell itself (`cmd.exe`)
- **External:** Have own executable files (usually in `C:\WINDOWS\system32`)

**Q:** Are commands like `cd`, `md`, `cls` internal or external?  
**A:** They are internal commands built into the shell or `cmd.exe`.

## Command History

- Commands are not case sensitive
- Commands executed are saved in history buffer
- `F7` - popup window on history
- `F8` - search for matching command
- `F9` - run command number

## Displaying Messages

- `echo` is used

### Examples

- `echo hello`
- `echo hello > hello.txt`
- `type hello.txt` - display content of the `.txt` file
- `echo off` - turns off display
- `echo on` - turns on display

## Copying Files and Directories

- `copy hello.txt hello.bak`
- `fc hello.txt hello.bak` - file compare their content

## Wildcards in Filenames

- `*` - matches any sequence of characters
- `?` - matches any single character
- `copy *.bak backup` - copy all files that end with `.bak` to the backup sub-directory

## Renaming Files and Directories

### Example

- `ren backup\*.bak *.old`
- `mkdir tmp`
- `ren tmp temp`
- `dir *.`

## Moving Files and Directories

### Example

- Move `.old` files to `temp` sub-directory: `move backup\*.old temp`
- Move `temp` to `backup` sub-directory: `move temp backup`

## Removing Files

### Example

- `cd backup/temp`
- `dir .`
- `del hello.old`
- `del *.*`
- `cd ..\..`

## Removing Directories

- `rd` is for directories, `del` for files
- **Note:** Directory can only be removed if empty

## Input, Output, and Error Redirection

- **Standard input (stdin):** Input from keyboard.
- **Standard output (stdout):** Output to console.
- **Standard error (stderr):** Error messages to console.
- **Redirection:** Changing where input/output goes.

### Commands and Examples

- Pipe output to another command: `dir | more`
- Take input from a file: `sort < data.txt`
- Send output to a file: `echo hello > hello.txt`
- Append output to a file: `echo world >> hello.txt`
- Input from a file and output to another file: `sort < data.txt > sorted.txt`
- Send error output to a file: `sort no_such_file 2> error.txt`

**Q:** File size of `data.txt`? How to account for the size of file?  
**A:** 16 bytes. Includes 10 bytes of data and CRLFs (carriage returns and line feeds characters).

- **Carriage return (CR)** `\r`: Moves the cursor to the start of the line.
- **Line feed (LF)** `\n`: Moves the cursor to the next line.
- Windows uses both (`\r\n`), while Unix/Linux/Mac use just `\n` for new lines.

## Redirecting Errors

- `type data.txt 1>data.bak 2> error.txt`
- **1>** redirects to the standard output.
- **2>** redirects to standard error.

## Redirecting to Devices

Redirection is not limited to files, devices also.

### Devices and Examples

- **LPTn (Output):** Parallel printer (e.g., LPT1, LPT2).  
  Example: Sends output to a printer.
- **PRN (Output):** Serial printer.  
  Example: Sends output to a printer.
- **CON (Input/Output):** Keyboard (input) and console (output).  
  Example:  
  `copy CON new_filename.txt` (Copy from keyboard to file)  
  `dir > CON` (Send output to console)
- **NUL (Input/Output):** Null device, used to discard unwanted output.  
  Example:  
  `dir > NUL` (Suppress output)

**Q:** Which device does `CON` refer to in the `copy CON new_filename.txt` command?  
**A:** The `CON` refers to the standard input. It will copy the input from the keyboard to a file.

## Using Multiple Commands

- `abc1 & abc2` - run commands in sequence: `dir /o/b & echo end of file list`
- `abc1 && abc2` - if 1 succeeds, then 2 will execute: `cd testfolder && nano module1.txt`
- `abc1 || abc2` - if 1 fails, then run 2: `type no_file || echo file not found`
- `()` - group multiple commands: `(hostname & echo running on & ver)`
- `;` or `,` - separate command parameters: `dir;*.txt` or `dir,*.txt`

## Grouping Commands

### Example

- `(hostname & echo is running on & ver)`

## Echo Command

Special characters include the following:

- `< > ( ) & | ^`
- The caret (`^`) is used as the escape character.

## Sort Command

- `sort [options] [file]`
- Sorts lines in a file or from input.

### Example

- `sort data.txt`
- `sort < data.txt > sorted.txt`

### Options

- `/r` - reverses the sort order
- `/+n` - starts sorting at column `n`

## Find Command

- `find [options] "text" [file]`
- Searches for specific text in a file or input.

### Example

- `find "hello" file.txt`

### Options

- `/i` - ignores case
- `/v` - displays lines that do not contain the text
- `/n` - displays line numbers with matching lines
