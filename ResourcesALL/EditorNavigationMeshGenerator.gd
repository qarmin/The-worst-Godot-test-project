extends Node2D

#var q_EditorNavigationMeshGenerator : EditorNavigationMeshGenerator = EditorNavigationMeshGenerator.new()
onready var counter : float = Autoload.get_rand_time()

#
#
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		if randi() % 2 == 1:
#			q_EditorNavigationMeshGenerator = EditorNavigationMeshGenerator.new()
#
#
#			#BUG q_EditorNavigationMeshGenerator.bake( Autoload.loadA("NavigationMesh.tres"), Node.new())
#			q_EditorNavigationMeshGenerator.clear(Autoload.loadA("NavigationMesh.tres"))

#func delete_node():
#	q_EditorNavigationMeshGenerator.free()
