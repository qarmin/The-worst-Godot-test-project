extends Node2D

onready var counter: float = Autoload.get_rand_time()


#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_EditorScenePostImport : EditorScenePostImport = EditorScenePostImport.new()
#
#		q_EditorScenePostImport.post_import( Control.new())
#
#		q_EditorScenePostImport.get_source_file()
#		q_EditorScenePostImport.get_source_folder()
