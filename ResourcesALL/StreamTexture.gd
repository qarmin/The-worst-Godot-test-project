extends Node2D

var q_StreamTexture : StreamTexture = StreamTexture.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_StreamTexture,true)

func nodeFunction(q_StreamTexture : StreamTexture, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_StreamTexture = StreamTexture.new()
	if randi() % 2 == 1:
		AutoResourcesTexture.nodeFunction(q_StreamTexture)

	if randi() % 2 == 1:
		q_StreamTexture.load("res://RES/Sprite.png")
