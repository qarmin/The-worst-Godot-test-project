extends Node2D

var q_VisualScriptDeconstruct : VisualScriptDeconstruct = VisualScriptDeconstruct.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptDeconstruct,true)

func nodeFunction(q_VisualScriptDeconstruct : VisualScriptDeconstruct, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptDeconstruct = VisualScriptDeconstruct.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptDeconstruct)

	if randi() % 2 == 1:
		q_VisualScriptDeconstruct.set_deconstruct_type(Autoload.get_int())  # Variant_MAX
