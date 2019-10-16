extends Node2D

var q_VisualScriptSelect : VisualScriptSelect = VisualScriptSelect.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptSelect = VisualScriptSelect.new()

		if randi() % 2 == 1:
			q_VisualScriptSelect.set_typed(Autoload.get_int())
