extends Node2D

var q_LargeTexture : LargeTexture = LargeTexture.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_LargeTexture,true)

func nodeFunction(q_LargeTexture : LargeTexture, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_LargeTexture = LargeTexture.new()
	if randi() % 2 == 1:
		AutoResourcesTexture.nodeFunction(q_LargeTexture)
		
	### START TEMP
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
	
	### END TEMP

	if randi() % 2 == 1:
		q_LargeTexture.add_piece(Autoload.get_vector2(),temp_ImageTexture)
	if randi() % 2 == 1:
		q_LargeTexture.clear()

	if randi() % 2 == 1:
		q_LargeTexture.get_piece_count()
	if randi() % 2 == 1:
		q_LargeTexture.get_piece_offset(Autoload.get_int())
	if randi() % 2 == 1:
		q_LargeTexture.get_piece_texture(Autoload.get_int())

	if randi() % 2 == 1:
		q_LargeTexture.set_piece_offset(Autoload.get_int(),Autoload.get_vector2())
	if randi() % 2 == 1:
		q_LargeTexture.set_piece_texture(Autoload.get_int(),temp_ImageTexture)
	if randi() % 2 == 1:
		q_LargeTexture.set_size(Autoload.get_vector2())

