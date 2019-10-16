extends Node2D

var q_VisualScriptResourcePath : VisualScriptResourcePath = VisualScriptResourcePath.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptResourcePath = VisualScriptResourcePath.new()

		if randi() % 2 == 1:
			q_VisualScriptResourcePath.set_resource_path("res://TEMP/" + Autoload.get_string())
