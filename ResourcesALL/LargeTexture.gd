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
		var q_LargeTexture : LargeTexture = LargeTexture.new()
		if !Autoload.RANDI:
			
			qq += str(q_LargeTexture.add_piece(Vector2(randf() * 50,randf() * 50),Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false)))
			###MOVED q_LargeTexture.clear()
			
			qq += str(q_LargeTexture.get_piece_count())
			qq += str(q_LargeTexture.get_piece_offset(0))
			qq += str(q_LargeTexture.get_piece_texture(0))
			
			q_LargeTexture.set_piece_offset(0,Vector2(randf() * 50,randf() * 50))
			q_LargeTexture.set_piece_texture(0,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			q_LargeTexture.set_size(Vector2(randf() * 50,randf() * 50))
			
			q_LargeTexture.clear() ## At the end
			
			if Autoload.WRONG_BUGS:
				qq += str(q_LargeTexture.add_piece(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png")))
				###MOVED q_LargeTexture.clear()
				
				qq += str(q_LargeTexture.get_piece_count())
				qq += str(q_LargeTexture.get_piece_offset(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_LargeTexture.get_piece_texture(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				
				q_LargeTexture.set_piece_offset(randi() % Autoload.RANGE - Autoload.RANGE / 2,Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_LargeTexture.set_piece_texture(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				q_LargeTexture.set_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				
				q_LargeTexture.clear() ## At the end
		else: #RANDI
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
