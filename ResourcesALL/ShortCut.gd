extends Node2D

var q_ShortCut : ShortCut = ShortCut.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ShortCut,true)

func nodeFunction(q_ShortCut : ShortCut, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_ShortCut = ShortCut.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_ShortCut)
		
	### START TEMP
	
	var temp_InputEventAction : InputEventAction = InputEventAction.new()
	AutoResourcesInputEventAction.nodeFunction(temp_InputEventAction)
	
	### END TEMP

	if randi() % 2 == 1:
		q_ShortCut.set_shortcut(temp_InputEventAction)

	if randi() % 2 == 1:
		q_ShortCut.get_as_text()

	if randi() % 2 == 1:
		q_ShortCut.is_shortcut(temp_InputEventAction)
	if randi() % 2 == 1:
		q_ShortCut.is_valid()
