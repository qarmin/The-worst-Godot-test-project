extends Node2D

var q_ButtonGroup : ButtonGroup = ButtonGroup.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_ButtonGroup = ButtonGroup.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_ButtonGroup.get_buttons())
		if randi() % 2 == 1:
			Autoload.qq = str(q_ButtonGroup.get_pressed_button())
