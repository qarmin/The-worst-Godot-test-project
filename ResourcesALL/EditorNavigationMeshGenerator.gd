extends Node2D
# MISSING
##var q_EditorNavigationMeshGenerator : EditorNavigationMeshGenerator = EditorNavigationMeshGenerator.new()
#
#@onready var counter : float = Autoload.get_rand_time()
#
#func alt_process(delta) -> void:
#	counter -= delta
#
##	if counter <= 0:
##		counter = Autoload.get_rand_time()
##
##		nodeFunction(q_EditorNavigationMeshGenerator,true)
#
#func nodeFunction(q_EditorNavigationMeshGenerator : EditorNavigationMeshGenerator, can_reset : bool = false) -> void:
#
#	if can_reset:
#		if randi() % 2 == 1:
#			q_EditorNavigationMeshGenerator.free()
#			q_EditorNavigationMeshGenerator = EditorNavigationMeshGenerator.new()
#	if randi() % 2 == 1:
#		AutoObjects.A_Object(q_EditorNavigationMeshGenerator)
#
#	### START TEMP
#	var temp_NavigationMesh : NavigationMesh = NavigationMesh.new()
#	AutoResourcesNavigationMesh.nodeFunction(temp_NavigationMesh)
#
#	var temp_Node : Node = Node.new()
#	AutoObjects.A_Node(temp_Node)
#
#	### END TEMP
#
#
#	if randi() % 2 == 1:
#		 q_EditorNavigationMeshGenerator.bake( temp_NavigationMesh, temp_Node)
#	if randi() % 2 == 1:
#		q_EditorNavigationMeshGenerator.clear(temp_NavigationMesh)
#
#	### CLEANING
#	temp_Node.queue_free()
#	### END CLEANING
#
##func exit_tree():
##	q_EditorNavigationMeshGenerator.free()
