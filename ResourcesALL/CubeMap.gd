extends Node2D

var q_CubeMap : CubeMap = CubeMap.new()
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
			q_CubeMap = CubeMap.new()

		
		if randi() % 2 == 1:
			q_CubeMap.set_flags(Autoload.get_int()) #FLAGS 
		if randi() % 2 == 1:
			q_CubeMap.set_storage(Autoload.get_int()) #Storage
		if randi() % 2 == 1:
			q_CubeMap.set_lossy_storage_quality(Autoload.get_float())

		if randi() % 2 == 1:
			qq += str(q_CubeMap.get_height())
		if randi() % 2 == 1:
			qq += str(q_CubeMap.get_side(Autoload.get_int()))# Side
		if randi() % 2 == 1:
			qq += str(q_CubeMap.get_width())
		if randi() % 2 == 1:
			q_CubeMap.set_side( Autoload.get_int(), Autoload.loadA("Sprite.png"))# Side
