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
		var q_CubeMap : CubeMap = CubeMap.new()

		if !Autoload.RANDI:
			q_CubeMap.set_flags(randi() % 7 + 1) #FLAGS 
			q_CubeMap.set_storage(randi() % 3) #Storage
			q_CubeMap.set_lossy_storage_quality(randf() * 50)
	
			qq += str(q_CubeMap.get_height())
			qq += str(q_CubeMap.get_side(randi() % 6))# Side
			qq += str(q_CubeMap.get_width())
			#q_CubeMap.set_side( randi() % 6, load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))# Side
	
			if Autoload.WRONG_BUGS:
				q_CubeMap.set_flags(randi() % Autoload.RANGE - Autoload.RANGE / 2) #FLAGS 
				q_CubeMap.set_storage(randi() % Autoload.RANGE - Autoload.RANGE / 2) #Storage
				q_CubeMap.set_lossy_storage_quality(randf() * Autoload.RANGE - Autoload.RANGE / 2)
	
				qq += str(q_CubeMap.get_height())
				qq += str(q_CubeMap.get_side(randi() % Autoload.RANGE - Autoload.RANGE / 2))# Side
				qq += str(q_CubeMap.get_width())
				q_CubeMap.set_side( randi() % Autoload.RANGE - Autoload.RANGE / 2, load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))# Side

		else: #RANDI
			if randi() % 2 == 1:
				q_CubeMap.set_flags(randi() % Autoload.RANGE - Autoload.RANGE / 2) #FLAGS 
			if randi() % 2 == 1:
				q_CubeMap.set_storage(randi() % Autoload.RANGE - Autoload.RANGE / 2) #Storage
			if randi() % 2 == 1:
				q_CubeMap.set_lossy_storage_quality(randf() * Autoload.RANGE - Autoload.RANGE / 2)
	
			if randi() % 2 == 1:
				qq += str(q_CubeMap.get_height())
			if randi() % 2 == 1:
				qq += str(q_CubeMap.get_side(randi() % Autoload.RANGE - Autoload.RANGE / 2))# Side
			if randi() % 2 == 1:
				qq += str(q_CubeMap.get_width())
			if randi() % 2 == 1:
				q_CubeMap.set_side( randi() % Autoload.RANGE - Autoload.RANGE / 2, load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))# Side
