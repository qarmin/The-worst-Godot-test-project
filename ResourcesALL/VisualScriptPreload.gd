extends Node2D

var q_VisualScriptPreload : VisualScriptPreload = VisualScriptPreload.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_VisualScriptPreload,true)

func nodeFunction(q_VisualScriptPreload : VisualScriptPreload, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_VisualScriptPreload = VisualScriptPreload.new()
	if randi() % 2 == 1:
		AutoResourcesVisualScriptNode.nodeFunction(q_VisualScriptPreload)
		
	### START TEMP
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
	
	### END TEMP

	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_VisualScriptPreload.set_preload(temp_ImageTexture)
