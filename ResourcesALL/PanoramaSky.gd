extends Node2D

var q_PanoramaSky : PanoramaSky = PanoramaSky.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PanoramaSky,true)

func nodeFunction(q_PanoramaSky : PanoramaSky, can_reset : bool = false) -> void:
	
	if can_reset:
		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				q_PanoramaSky = PanoramaSky.new()
	if randi() % 2 == 1:
		AutoResourcesSky.nodeFunction(q_PanoramaSky)
		
	if randi() % 2 == 1:
		q_PanoramaSky.set_panorama(ImageTexture.new())
