extends Node2D

var q_DynamicFontData: DynamicFontData = DynamicFontData.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_DynamicFontData, true)


func nodeFunction(q_DynamicFontData: DynamicFontData, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_DynamicFontData = DynamicFontData.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_DynamicFontData)

	if randi() % 2 == 1:
		q_DynamicFontData.set_antialiased(Autoload.get_bool())
	if randi() % 2 == 1:
		q_DynamicFontData.set_hinting(Autoload.get_int())  # Hinting
	if randi() % 2 == 1:
		q_DynamicFontData.set_font_path("res://RES/FreeMono.otf")
