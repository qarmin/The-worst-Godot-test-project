extends Node2D

var q_VisualScriptDeconstruct : VisualScriptDeconstruct = VisualScriptDeconstruct.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptDeconstruct = VisualScriptDeconstruct.new()

		if randi() % 2 == 1:
			q_VisualScriptDeconstruct.set_deconstruct_type(Autoload.get_int())  # Variant_MAX
