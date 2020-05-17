extends Node2D

var q_StreamTexture2D : StreamTexture2D = StreamTexture2D.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_StreamTexture2D,true)

func nodeFunction(q_StreamTexture2D : StreamTexture2D, can_reset : bool = false) -> void:

	if can_reset:
		if randi() % 2 == 1:
			q_StreamTexture2D = StreamTexture2D.new()
#	if randi() % 2 == 1: #MISSING
#		AutoResourcesTexture.nodeFunction(q_StreamTexture2D)

	if randi() % 2 == 1:
		q_StreamTexture2D.load("res://RES/Sprite.png")
