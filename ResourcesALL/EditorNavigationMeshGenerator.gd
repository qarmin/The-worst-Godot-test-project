extends Node2D

#var q_EditorNavigationMeshGenerator : EditorNavigationMeshGenerator = EditorNavigationMeshGenerator.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		nodeFunction(q_EditorNavigationMeshGenerator,true)

func nodeFunction(q_EditorNavigationMeshGenerator : EditorNavigationMeshGenerator, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_EditorNavigationMeshGenerator.free()
			q_EditorNavigationMeshGenerator = EditorNavigationMeshGenerator.new()
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_EditorNavigationMeshGenerator)


#	if randi() % 2 == 1:
		#BUG q_EditorNavigationMeshGenerator.bake( Autoload.loadA("NavigationMesh.tres"), Node.new())
	if randi() % 2 == 1:
		q_EditorNavigationMeshGenerator.clear(Autoload.loadA("NavigationMesh.tres"))

#func exit_tree():
#	q_EditorNavigationMeshGenerator.free()
