extends Node2D

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
#
#		var q_VisualScriptEditor : VisualScriptEditor = VisualScriptEditor.new()
#
#		VisualScriptEditor.add_custom_node(ReklamaAutoload.get_string(), Script.new())
#		VisualScriptEditor.remove_custom_node(Autoload.get_string(), Autoload.get_string())
#
