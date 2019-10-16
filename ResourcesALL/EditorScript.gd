extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#
#		var q_EditorScript : EditorScript = EditorScript.new()
#
#		q_EditorScript._run()
#
#		q_EditorScript.add_root_node( Node.new() )
#
#		q_EditorScript.get_editor_interface()
#		q_EditorScript.get_scene()
#
