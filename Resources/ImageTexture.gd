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
		
		q_ImageTexture.set_storage(randi() % 3) #Storage
		q_ImageTexture.set_lossy_storage_quality(randf() * 50)
		
		q_ImageTexture.create(randi()%50,randi()%50,randi() % Image.FORMAT_MAX,randi()%50) # Format
		q_ImageTexture.create_from_image(Image.new(),randi() % 64)
		
		qq += str(q_ImageTexture.get_format())
		#qq += str(q_ImageTexture.load("res://Sprite1.png"))
		
		#q_ImageTexture.set_data(Image.new())
		q_ImageTexture.set_size_override(Vector2(randf() * 50 + 10,randf() * 50 + 10))
		
		if Autoload.WRONG_BUGS:
			q_ImageTexture.set_storage(randi() % 1000 - 500) #Storage
			q_ImageTexture.set_lossy_storage_quality(randf() * 1000 - 500)

			q_ImageTexture.create(randi() % 1000 - 500,randi() % 1000 - 500,randi() % 6000 - 3000,randi() % 1000 - 500) # Format
			q_ImageTexture.create_from_image(Image.new(),randi() % 1000 - 500)

			qq += str(q_ImageTexture.get_format())
			qq += str(q_ImageTexture.load("res://Sprite1.png"))

			q_ImageTexture.set_data(Image.new())
			q_ImageTexture.set_size_override(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
