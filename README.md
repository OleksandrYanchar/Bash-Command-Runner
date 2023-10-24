# This program executes multiple commands with one click

*I made this program to make easier installation of all important programs after installing new os. Hope it'll be userfull for you*

## Installation


#### Update the package list:

```bash
sudo apt update
```

#### Clone this repository:

```bash
git clone https://github.com/OleksandrYanchar/Bash-Command-Runner
```
#### Open project directory
```bash
cd Bash-Command-Runner
```
#### Give program rights to execute
```bash
chmod +x CommandsExecutor.sh 
```
#### Create commands list file
```bash
touch commands.txt
```
#### Set up commands list  file

```bash
nano commands.txt 
'all your commands here'
'check commands.txt.example'
```
#### Run script
```bash
./CommandsExecutor.sh 
```