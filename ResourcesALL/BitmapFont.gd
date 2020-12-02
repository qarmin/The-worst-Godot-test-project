extends Node2D

var q_Font: Font = Font.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Font, true)


func nodeFunction(q_Font: Font, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Font = Font.new()
	if randi() % 2 == 1:
		AutoResourcesFont.nodeFunction(q_Font)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

#	if randi() % 2 == 1:
#		q_Font.set_height(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Font.set_ascent(Autoload.get_float())
#	if randi() % 2 == 1:
#		q_Font.set_distance_field_hint(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Font.set_fallback(q_Font)
#
#	if randi() % 2 == 1:
#		q_Font.add_char(Autoload.get_int(), Autoload.get_int(), Autoload.get_rect2(), Autoload.get_vector2())
#	if randi() % 2 == 1:
#		q_Font.add_kerning_pair(Autoload.get_int(), Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Font.add_texture(temp_ImageTexture)
#
#	if randi() % 2 == 1:
#		q_Font.clear()
#	if randi() % 2 == 1:
#		if Autoload.SLOW_FUNCTIONS:
#			q_Font.create_from_fnt("res://RES/FreeMono.otf")

	if randi() % 2 == 1:
		q_Font.get_char_size(Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Font.get_kerning_pair(Autoload.get_int(), Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Font.get_texture(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Font.get_texture_count()
