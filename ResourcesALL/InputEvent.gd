extends Node2D

var q_InputEvent : InputEvent = InputEventAction.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_InputEvent = InputEventAction.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEvent.accumulate( Autoload.loadA("InputEventAction.tres") ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEvent.as_text())
		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEvent.get_action_strength( Autoload.get_string()))

		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEvent.is_action( Autoload.get_string() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEvent.is_action_pressed( Autoload.get_string() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEvent.is_action_released( Autoload.get_string() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEvent.is_action_type())
		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEvent.is_echo())
		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEvent.is_pressed())

		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEvent.shortcut_match( Autoload.loadA("InputEventAction.tres")))
		if randi() % 2 == 1:
			Autoload.qq = str(q_InputEvent.xformed_by( Autoload.get_transform2d(), Autoload.get_vector2() ))

