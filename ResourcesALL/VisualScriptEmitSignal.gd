extends Node2D

var q_VisualScriptEmitSignal : VisualScriptEmitSignal = VisualScriptEmitSignal.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptEmitSignal = VisualScriptEmitSignal.new()

		if randi() % 2 == 1:
			q_VisualScriptEmitSignal.set_signal(Autoload.get_string())
