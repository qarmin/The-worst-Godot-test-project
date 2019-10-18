extends Node2D

var q_CubeMap : CubeMap = CubeMap.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_CubeMap = CubeMap.new()

		if randi() % 2 == 1:
			q_CubeMap.set_flags(Autoload.get_int()) #FLAGS 
		if randi() % 2 == 1:
			q_CubeMap.set_storage(Autoload.get_int()) #Storage
		if randi() % 2 == 1:
			q_CubeMap.set_lossy_storage_quality(Autoload.get_float())

		if randi() % 2 == 1:
			Autoload.qq = str(q_CubeMap.get_height())
		if randi() % 2 == 1:
			Autoload.qq = str(q_CubeMap.get_side(Autoload.get_int()))# Side
		if randi() % 2 == 1:
			Autoload.qq = str(q_CubeMap.get_width())
		if randi() % 2 == 1:
			q_CubeMap.set_side( Autoload.get_int(), Autoload.loadA("Sprite.png"))# Side
