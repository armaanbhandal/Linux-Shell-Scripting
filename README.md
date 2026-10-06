# Linux Shell Scripting

Bash scripts from my Linux administration coursework: listing system files, searching the directory tree, moving and numbering output, and reading files passed as arguments.

All output goes to the `logs/` folder next to the scripts, so they run from any location.

## Scripts

| Script | What it does |
|---|---|
| `task1.sh` | Lists everything in `/dev` to `logs/Proj1.txt` and prints the count |
| `task2.sh` | Finds every directory in `/etc` (`logs/Proj2-1.txt`) and in `/` (built in `tmp/`, then moved to `logs/Proj2-2.txt`) |
| `task3.sh` | Numbers each line of `Proj2-2.txt` into `logs/Proj3-1.txt` (run `task2.sh` first) |
| `receivingProgram.sh` | Takes a file name as an argument, prints the file line by line, then the line count, name and date |

## Running

```bash
chmod +x *.sh
./task1.sh
./task2.sh
./task3.sh
./receivingProgram.sh logs/Proj1.txt
```

Tested on Linux with Bash 5. On macOS, `task2.sh` takes longer because it walks the whole disk.
