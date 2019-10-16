extends Node2D

var q_DynamicFontData : DynamicFontData = DynamicFontData.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_DynamicFontData = DynamicFontData.new()

		if randi() % 2 == 1:
			q_DynamicFontData.set_antialiased(Autoload.get_bool())
		if randi() % 2 == 1:
			q_DynamicFontData.set_hinting(Autoload.get_int()) # Hinting
		if randi() % 2 == 1:
			q_DynamicFontData.set_font_path("res://RES/FreeMono.otf")
