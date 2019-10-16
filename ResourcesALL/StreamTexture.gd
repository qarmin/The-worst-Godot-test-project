extends Node2D

var q_StreamTexture : StreamTexture = StreamTexture.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_StreamTexture = StreamTexture.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_StreamTexture.load("res://RES/Sprite.png"))
