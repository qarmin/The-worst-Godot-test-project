# The-worst-Godot-test-project
Test project to check as many as possible functions, nodes and their parameters

FreeMono.otf is downloaded from https://savannah.gnu.org/projects/freefont/ and have GPL license  
## Informations
1. Each scene - 3DALL, 2DALL, ControlALL, Resources and OtherALL contains nodes/resources from correct category  
- 2DALL - 2D nodes, children of Node2D  
- 3DALL - 3D nodes, children of Spatial  
- ResourceALL - Resources, children of Resource node  
- ControlALL - Controll nodes, child Control node  
- RES - Created Resources which are loaded when needed in different scripts  
2. Nodes in Scene Tree which are hidden are a little after running game deleted, so if you don't want to run script, just hide a node instead deleting it
3. There are two running modes which can be run:
- Error free - Project show as low as possible errors, but it have some part of code disabled
- Full - Project check as most as possible bugs, but also produce tons of errors  
This modes can be change in Autoload.gd by changing variable WRONG_BUGS
4. It also have a time to execute a script again and again. It is stored at scipt in root node of each scene(2DALL, 3DALL), it has name TIME_TO_ACTIVATE and contains min and max time to next script execution.
5. I added also in Autoload a variable BASIC_COUNTER which is being reduced by 1 in each frame and when BASIC_COUNTER will have value smaller than 0, then game quit. When value is set negative, then game doesn't exit
6. SLOW_FUNCTIONS in Autoload enable some very slow functions like bake() - disabled by default

## How to help?
### Fix bugs in engine
I found with help this projecy many invalid read/writes, crashes or memory leaks, you can look at it and maybe even repair some of it - https://github.com/godotengine/godot/issues?q=is%3Aissue+is%3Aopen+The-worst-Godot-test-project+label%3Abug , usually they are labeled in project code with #BUG.
### Test code
If you found that some part of code working good and is labeled as bug or working bad(crashes, invalid reads/writes) but doesn't have #BUG label, open new issue
### Write new tests
If you found a part of code which isn't tested, you can write your own tests(should looks similar to created).  
For now I don't have any plans to do this tests to C#, but maybe someone want to do it.


## Tools
### Valgrind
I use Valgrind to find Invalid writes/reads and memory leaks in this project  
This is my default command(you should change path like /home/rafal to your own)  
```
valgrind --log-file="/home/rafal/valgrind.txt" --num-callers=25 --leak-check=full --show-leak-kinds=definite --child-silent-after-fork=yes ~/Pulpit/mojgodot/bin/godot.x11.tools.64 -v  --video-driver 'GLES2' --path /home/rafal/Projekty/The-worst-Godot-test-project/
```
### QT Creator
I use QT Creator to find cause of crashes and repair all problems from above

