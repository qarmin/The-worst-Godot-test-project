extends Node2D

var q_ProxyTexture: ProxyTexture = ProxyTexture.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ProxyTexture, true)


func nodeFunction(q_ProxyTexture: ProxyTexture, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_ProxyTexture = ProxyTexture.new()
#	if randi() % 2 == 1:#MISSING
#		AutoResourcesTexture.nodeFunction(q_ProxyTexture)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_ProxyTexture.set_base(temp_ImageTexture)
