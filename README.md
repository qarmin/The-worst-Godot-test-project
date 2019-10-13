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
- TEMP - Folder which contains temporary files
- ImportFiles - Contains basic files to import(check for errors and leaks)
2. Nodes in Scene Tree which are hidden are a little after running game deleted, so if you don't want to run script, just hide a node instead deleting it(not working with ControlALL and OtherALL scenes)
3. It also have a time to execute a script again and again. It is stored at scipt in root node of each scene(2DALL, 3DALL), it has name TIME_TO_ACTIVATE and contains min and max time to next script execution.
4. I added also in Autoload a variable BASIC_COUNTER which is being reduced by 1 in each frame and when BASIC_COUNTER will have value smaller than 0, then game quit. When value is set negative, then game doesn't exit
5. SLOW_FUNCTIONS in Autoload enable some very slow functions like bake() - disabled by default
6. USE_ONLY_ONE_NODE in Autoload check nodes one by one instead all at same time
7. RANDI in Autoload randomize execution order of functions
8. RANGE provide max and min value for functions parameters
9. Function loadA randomize loading of resources
10. Function get_string(), get_randi(), get_randf() randomize output int, float and string variables.


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
I used Valgrind to find Invalid writes/reads and memory leaks in this project  
This was my default command(you should change path like /home/rafal to your own)  
Godot should run slower ~20-60x
```
valgrind --log-file="/home/rafal/valgrind.txt" --num-callers=25 --leak-check=full --show-leak-kinds=definite --child-silent-after-fork=yes ~/Pulpit/mojgodot/bin/godot.x11.tools.64 -v  --video-driver 'GLES2' --path /home/rafal/Projekty/The-worst-Godot-test-project/
```
### ASAN, UBSAN, LSAN and TSAN
Now I use faster and easier solution, I compile Godot with Address, Leak and Undefinied Sanitizers support(GCC and Clang on Linux only)
Godot should run slower ~2-5x
To use it just compile Godot with this command
```
scons p=x11 -j6 use_lsan=yes use_asan=yes use_ubsan=yes
```
produced binary should be placed here `bin/godot.x11.tools.64s`
### QT Creator
I use QT Creator to find cause of crashes and repair all problems found by techniques from above

