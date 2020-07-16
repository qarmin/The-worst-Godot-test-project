extends Node2D

var q_AnimatedTexture: AnimatedTexture = AnimatedTexture.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_AnimatedTexture, true)


func nodeFunction(q_AnimatedTexture: AnimatedTexture, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_AnimatedTexture = AnimatedTexture.new()
#	if randi() % 2 == 1: #MISSING
#		AutoResourcesTexture.nodeFunction(q_AnimatedTexture)

	### START TEMP

	var temp_ImageTexture: ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_AnimatedTexture.set_frames(Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimatedTexture.set_fps(Autoload.get_float())

	if randi() % 2 == 1:
		q_AnimatedTexture.get_frame_delay(Autoload.get_int())
	if randi() % 2 == 1:
		q_AnimatedTexture.get_frame_texture(Autoload.get_int())

	if randi() % 2 == 1:
		q_AnimatedTexture.set_frame_delay(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_AnimatedTexture.set_frame_texture(Autoload.get_int(), temp_ImageTexture)
