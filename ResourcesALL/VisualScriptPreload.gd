extends Node2D

var q_VisualScriptPreload : VisualScriptPreload = VisualScriptPreload.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptPreload = VisualScriptPreload.new()

		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				q_VisualScriptPreload.set_preload(Autoload.loadA("Sprite.png"))
