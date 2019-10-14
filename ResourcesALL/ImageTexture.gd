extends Node2D

var q_ImageTexture : ImageTexture = ImageTexture.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_ImageTexture = ImageTexture.new()
			
			
		if randi() % 2 == 1:
			q_ImageTexture.set_storage(Autoload.get_int()) #Storage
		if randi() % 2 == 1:
			q_ImageTexture.set_lossy_storage_quality(Autoload.get_float())

		if randi() % 2 == 1:
			q_ImageTexture.create(min(Autoload.get_int(),1000),min(Autoload.get_int(),1000),Autoload.get_int(),Autoload.get_int()) # Format
		if randi() % 2 == 1:
			q_ImageTexture.create_from_image(Image.new(),Autoload.get_int())

		if randi() % 2 == 1:
			qq += str(q_ImageTexture.get_format())
		if randi() % 2 == 1:
			qq += str(q_ImageTexture.load("Sprite.png"))

		if randi() % 2 == 1:
			q_ImageTexture.set_data(Image.new())
		if randi() % 2 == 1:
			q_ImageTexture.set_size_override(Autoload.get_vector2())
