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
			q_ImageTexture.set_storage(Autoload.get_randi()) #Storage
		if randi() % 2 == 1:
			q_ImageTexture.set_lossy_storage_quality(Autoload.get_randf())

		if randi() % 2 == 1:
			q_ImageTexture.create(Autoload.get_randi(),Autoload.get_randi(),randi() % 6000 - 3000,Autoload.get_randi()) # Format
		if randi() % 2 == 1:
			q_ImageTexture.create_from_image(Image.new(),Autoload.get_randi())

		if randi() % 2 == 1:
			qq += str(q_ImageTexture.get_format())
		if randi() % 2 == 1:
			qq += str(q_ImageTexture.load("res://RES/Sprite1.png"))

		if randi() % 2 == 1:
			q_ImageTexture.set_data(Image.new())
		if randi() % 2 == 1:
			q_ImageTexture.set_size_override(Vector2(Autoload.get_randf(),Autoload.get_randf()))
