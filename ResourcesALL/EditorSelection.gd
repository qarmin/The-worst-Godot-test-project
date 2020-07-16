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
#		var q_EditorSelection : EditorSelection = EditorSelection.new()
#
#		q_EditorSelection.add_node( Node.new())
#		q_EditorSelection.clear()
#
#		q_EditorSelection.get_selected_nodes()
#		q_EditorSelection.get_transformable_selected_nodes()
#
#		q_EditorSelection.remove_node( Node.new())
#
