# The-worst-Godot-test-project
Test project to check as many as possible functions, nodes and their parameters

FreeMono.otf is downloaded from https://savannah.gnu.org/projects/freefont/ and have GPL license  
## Informations
1. Each scene - 3DALL, 2DALL, ControlALL, Resources and OtherALL contains nodes/resources from correct category  
- 2DALL - 2D nodes, children of Node2D  
- 3DALL - 3D nodes, children of Spatial  
- Resource - Resources, children of Resource node  
- ControlALL - Controll nodes, child Control node  
- RES - Created Resources which are loaded when needed in different scripts  
2. Nodes in Scene Tree which are hidden are a little after running game deleted, so if you don't want to run script, just hide a node instead deleting it
3. There are two running modes which can be run:
- Error free - Project show as low as possible errors, but it have some part of code disabled
- Full - Project check as most as possible bugs, but also produce tons of errors  
This modes can be change in Autoload.gd by changing variable WRONG_BUGS
4. It also have a time to execute a script again and again. It is stored at scipt in root node of each scene(2DALL, 3DALL), it has name TIME_TO_ACTIVATE and contains min and max time to next script execution.
5. I added also in Autoload a variable BASIC_COUNTER which is being reduced by 1 in each frame and when BASIC_COUNTER will have value smaller than 0, then game quit
