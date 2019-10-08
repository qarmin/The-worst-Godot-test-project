extends Node2D

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
			
		var q_ImageTexture : ImageTexture = ImageTexture.new()
		if !Autoload.RANDI:
			
			q_ImageTexture.set_storage(randi() % 3) #Storage
			q_ImageTexture.set_lossy_storage_quality(randf() * 50)
			
			q_ImageTexture.create(randi()%50,randi()%50,randi() % Image.FORMAT_MAX,randi()%50) # Format
			q_ImageTexture.create_from_image(Image.new(),randi() % 64)
			
			qq += str(q_ImageTexture.get_format())
			#qq += str(q_ImageTexture.load("res://RES/Sprite1.png"))
			
			#q_ImageTexture.set_data(Image.new())
			q_ImageTexture.set_size_override(Vector2(randf() * 50 + 10,randf() * 50 + 10))
			
			if Autoload.WRONG_BUGS:
				q_ImageTexture.set_storage(randi() % Autoload.RANGE - Autoload.RANGE / 2) #Storage
				q_ImageTexture.set_lossy_storage_quality(randf() * Autoload.RANGE - Autoload.RANGE / 2)
	
				q_ImageTexture.create(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % 6000 - 3000,randi() % Autoload.RANGE - Autoload.RANGE / 2) # Format
				q_ImageTexture.create_from_image(Image.new(),randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
				qq += str(q_ImageTexture.get_format())
				qq += str(q_ImageTexture.load("res://RES/Sprite1.png"))
	
				q_ImageTexture.set_data(Image.new())
				q_ImageTexture.set_size_override(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))

		else: #RANDI
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
