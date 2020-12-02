extends Node2D

var q_Shortcut: Shortcut = Shortcut.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Shortcut, true)


func nodeFunction(q_Shortcut: Shortcut, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Shortcut = Shortcut.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Shortcut)

	### START TEMP

	var temp_InputEventAction: InputEventAction = InputEventAction.new()
	AutoResourcesInputEventAction.nodeFunction(temp_InputEventAction)

	### END TEMP

#	if randi() % 2 == 1:
#		q_Shortcut.set_Shortcut(temp_InputEventAction)

	if randi() % 2 == 1:
		q_Shortcut.get_as_text()

#	if randi() % 2 == 1:
#		q_Shortcut.is_Shortcut(temp_InputEventAction)
	if randi() % 2 == 1:
		q_Shortcut.is_valid()
