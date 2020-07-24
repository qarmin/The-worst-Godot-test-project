extends Node2D

var q_PanoramaSkyMaterial: PanoramaSkyMaterial = PanoramaSkyMaterial.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PanoramaSkyMaterial, true)


func nodeFunction(q_PanoramaSkyMaterial: PanoramaSkyMaterial, can_reset: bool = false) -> void:
	if can_reset:
		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				q_PanoramaSkyMaterial = PanoramaSkyMaterial.new()
#	 TODOif randi() % 2 == 1:
#		AutoResourcesSky.nodeFunction(q_PanoramaSkyMaterial)

	### START TEMP

	var temp_ImageTexture: ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_PanoramaSkyMaterial.set_panorama(temp_ImageTexture)
