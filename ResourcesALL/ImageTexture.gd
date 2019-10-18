extends Node2D

var q_ImageTexture : ImageTexture = ImageTexture.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_ImageTexture = ImageTexture.new()

		if randi() % 2 == 1:
			q_ImageTexture.set_storage(Autoload.get_int()) #Storage
		if randi() % 2 == 1:
			q_ImageTexture.set_lossy_storage_quality(Autoload.get_float())

		if randi() % 2 == 1:
			q_ImageTexture.create(Autoload.get_inti(1000),Autoload.get_inti(1000),Autoload.get_int(),Autoload.get_int()) # Format 
		if randi() % 2 == 1:
			q_ImageTexture.create_from_image(Image.new(),Autoload.get_int())

		if randi() % 2 == 1:
			Autoload.qq = str(q_ImageTexture.get_format())
		if randi() % 2 == 1:
			Autoload.qq = str(q_ImageTexture.load("Sprite.png"))

		if randi() % 2 == 1:
			q_ImageTexture.set_data(Image.new())
		if randi() % 2 == 1:
			q_ImageTexture.set_size_override(Autoload.get_vector2())
