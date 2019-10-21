extends Node2D

var q_ShortCut : ShortCut = ShortCut.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_ShortCut = ShortCut.new()

		if randi() % 2 == 1:
			q_ShortCut.set_shortcut(Autoload.loadA("InputEventAction.tres"))

		if randi() % 2 == 1:
			q_ShortCut.get_as_text())

		if randi() % 2 == 1:
			q_ShortCut.is_shortcut(Autoload.loadA("InputEventAction.tres")))
		if randi() % 2 == 1:
			q_ShortCut.is_valid())
