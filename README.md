** THIS PROJECT IS DEPRECATED AND NO LONGER MAINTAINED **

New automated project is available here - [Qarminer](https://github.com/qarmin/Qarminer)


# The-worst-Godot-test-project

Test project to check as many as possible functions, nodes and their parameters

This version added a lot of tests but still can is incomplete, so you may want to use older but more "stable" and easier to understand version from this branch - https://github.com/qarmin/The-worst-Godot-test-project/tree/old_stable_version

FreeMono.otf is downloaded from https://savannah.gnu.org/projects/freefont/ under GPL license  
## Informations
1. Each scene - 3DALL, 2DALL, ControlALL, ResourcesALL, OtherALL and ViewportALL contains different nodes/resources  
- 2DALL - 2D nodes, children of Node2D  
- 3DALL - 3D nodes, children of Node3D  
- ResourceALL - Resources, childrens of Resource  
- ControlALL - Control nodes, childrens of Control node  
- ViewportALL - Viewport nodes, childrens of Viewport node  
- RES - Resources with assigned basic data(It will be replaced later by automatically creating)  
- TEMP - Folder which contains temporary files, isn't even included due to line in .gitignore  
- ImportFiles - Contains basic and small files to import(check for errors, leaks and crashes in import process)
2. Nodes in Scene Tree which are hidden are immediately deleted after running project, so if you don't want to run certain scripts, just hide a node instead deleting it(not working with ControlALL and OtherALL scenes - in this scenes, you should created duplicate scene and delete some nodes or play with CTRL+Z)
3. SLOW_FUNCTIONS in Autoload enable some very very bery slow functions like bake() - Disabled by defauld
4. RANGE provide max and min value for functions parameters
5. Function loadA randomize loading of resources from RES folder(it will be removed later)
6. Function get_string(), get_randi(), get_randf() etc. randomize variable values.


## How to help?
### Fix bugs in engine
I found with help this project many invalid read/writes, crashes or memory leaks, you can look at it and maybe even repair some of it - https://github.com/godotengine/godot/issues?q=is%3Aissue+is%3Aopen+The-worst-Godot-test-project+label%3Abug , usually they are labeled in project code with #BUG, #CRASH.  
Labels #BUG NEW, usually are not reported yet, because I'm unable to reproduce it.  
There are also comments #GH#xxxxx which provide information to which issue number is assigned bug report
### Test code
If you found that some part of code working good and is labeled as bug or working bad(crashes, invalid reads/writes) but doesn't have #BUG label, open new issue
### Write new tests
If you found a part of code which isn't tested, you can write your own tests(should looks similar to created).  
For now I don't have any plans to do this tests to C# or any other laguage, but maybe someone want to do it(There should be a lot of crashes, because C# support is a lot of younger than GDScript).
## Bullet crashes
Since there was enabled DEBUG build in Godot, there is almost in any 3D Script a crash related with Bullet, so the best solution is to delete for now 3DALL scene and work on others nodes/resources.

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
I just copy this by command `sudo cp bin/godot.x11.tools.64s /usr/bin/godots` and run project by typing `DRI_PRIME=0 godots -e`(DRI_PRIME=0 skip part about leaks from detect_prime() function)
### QT Creator
I use QT Creator to find cause of crashes and repair all problems found by techniques from above

