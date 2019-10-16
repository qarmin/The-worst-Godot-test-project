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
#		var q_VisualScriptNode : VisualScriptNode = VisualScriptNode.new()
#
#		q_VisualScriptNode.get_default_input_value( Autoload.get_int() )
#		q_VisualScriptNode.get_visual_script()
#
#		q_VisualScriptNode.ports_changed_notify()
#		q_VisualScriptNode.set_default_input_value( Autoload.get_int(), String() )
#
