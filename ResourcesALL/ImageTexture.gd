extends Node2D

var q_ImageTexture: ImageTexture = ImageTexture.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ImageTexture, true)


func nodeFunction(q_ImageTexture: ImageTexture, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_ImageTexture = ImageTexture.new()
#	if randi() % 2 == 1:#MISSING
#		AutoResourcesTexture.nodeFunction(q_ImageTexture)

	### START TEMP

	var temp_Image: Image = Image.new()
	AutoResourcesImage.nodeFunction(temp_Image)

	### END TEMP

#	if randi() % 2 == 1:
#		q_ImageTexture.set_storage(Autoload.get_int()) #Storage
#	if randi() % 2 == 1:
#		q_ImageTexture.set_lossy_storage_quality(Autoload.get_float())
#
##	if randi() % 2 == 1: #MISSING
##		q_ImageTexture.create(Autoload.get_inti(1000),Autoload.get_inti(1000),Autoload.get_int(),Autoload.get_int()) # Format 
#	if randi() % 2 == 1:
#		q_ImageTexture.create_from_image(temp_Image)
#
#	if randi() % 2 == 1:
#		q_ImageTexture.get_format()
#	if Autoload.NOT_A_BUG:
#		if randi() % 2 == 1:
#			q_ImageTexture.load("res://icon.png")

#	if randi() % 2 == 1:
#		q_ImageTexture.set_data(temp_Image)
#	if randi() % 2 == 1:
#		q_ImageTexture.set_size_override(Autoload.get_vector2())
