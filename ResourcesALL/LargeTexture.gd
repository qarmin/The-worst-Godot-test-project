extends Node2D

var q_LargeTexture : LargeTexture = LargeTexture.new()
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
			q_LargeTexture = LargeTexture.new()
		
		if randi() % 2 == 1:
			qq += str(q_LargeTexture.add_piece(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png")))
			###MOVED q_LargeTexture.clear()
			
		if randi() % 2 == 1:
			qq += str(q_LargeTexture.get_piece_count())
		if randi() % 2 == 1:
			qq += str(q_LargeTexture.get_piece_offset(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_LargeTexture.get_piece_texture(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			q_LargeTexture.set_piece_offset(randi() % Autoload.RANGE - Autoload.RANGE / 2,Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_LargeTexture.set_piece_texture(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			q_LargeTexture.set_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			q_LargeTexture.clear() ## At the end
