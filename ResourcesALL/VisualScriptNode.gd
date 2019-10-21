extends Node2D

var q_VisualScriptNode : VisualScriptNode = VisualScriptBasicTypeConstant.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptNode,true)

func nodeFunction(q_VisualScriptNode : VisualScriptNode, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_VisualScriptNode = VisualScriptNode.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_VisualScriptNode)
		
		q_VisualScriptNode.get_default_input_value( Autoload.get_int())
		q_VisualScriptNode.get_visual_script()

		q_VisualScriptNode.ports_changed_notify()
		q_VisualScriptNode.set_default_input_value( Autoload.get_int(), String())

