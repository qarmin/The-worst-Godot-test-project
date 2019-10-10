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
			q_ImageTexture.set_storage(randi() % Autoload.RANGE - Autoload.RANGE / 2) #Storage
		if randi() % 2 == 1:
			q_ImageTexture.set_lossy_storage_quality(randf() * Autoload.RANGE - Autoload.RANGE / 2)

		if randi() % 2 == 1:
			q_ImageTexture.create(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % 6000 - 3000,randi() % Autoload.RANGE - Autoload.RANGE / 2) # Format
		if randi() % 2 == 1:
			q_ImageTexture.create_from_image(Image.new(),randi() % Autoload.RANGE - Autoload.RANGE / 2)

		if randi() % 2 == 1:
			qq += str(q_ImageTexture.get_format())
		if randi() % 2 == 1:
			qq += str(q_ImageTexture.load("res://RES/Sprite1.png"))

		if randi() % 2 == 1:
			q_ImageTexture.set_data(Image.new())
		if randi() % 2 == 1:
			q_ImageTexture.set_size_override(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
