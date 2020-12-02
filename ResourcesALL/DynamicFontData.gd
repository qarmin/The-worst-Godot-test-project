extends Node2D

var q_FontData: FontData = FontData.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_FontData, true)


func nodeFunction(q_FontData: FontData, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_FontData = FontData.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_FontData)

	if randi() % 2 == 1:
		q_FontData.set_antialiased(Autoload.get_bool())
	if randi() % 2 == 1:
		q_FontData.set_hinting(Autoload.get_int())  # Hinting
#	if randi() % 2 == 1:
#		q_FontData.set_font_path("res://RES/FreeMono.otf")
