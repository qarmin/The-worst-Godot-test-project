extends Node2D

var q_VisualScriptConstructor : VisualScriptConstructor = VisualScriptConstructor.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualScriptConstructor = VisualScriptConstructor.new()

		if randi() % 2 == 1:
			q_VisualScriptConstructor.get_constructor())
		if randi() % 2 == 1:
			q_VisualScriptConstructor.get_constructor_type())

		if randi() % 2 == 1:
			q_VisualScriptConstructor.set_constructor( Autoload.get_dictionary())
		if randi() % 2 == 1:
			q_VisualScriptConstructor.set_constructor_type(Autoload.get_int())
