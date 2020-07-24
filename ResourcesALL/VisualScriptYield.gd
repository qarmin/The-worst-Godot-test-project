extends Node2D

var q_VisualScriptYield: VisualScriptYield = VisualScriptYield.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptYield, true)


func nodeFunction(q_VisualScriptYield: VisualScriptYield, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptYield = VisualScriptYield.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptYield)

	if randi() % 2 == 1:
		q_VisualScriptYield.set_yield_mode(Autoload.get_int())  #Yield mode
	if randi() % 2 == 1:
		q_VisualScriptYield.set_wait_time(Autoload.get_int())
