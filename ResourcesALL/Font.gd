extends Node2D

var q_Font : Font = BitmapFont.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Font = BitmapFont.new()

		if randi() % 2 == 1:
			q_Font.draw( RID(), Autoload.get_vector2(), Autoload.get_string(), Autoload.get_color(), Autoload.get_int(), Autoload.get_color())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Font.draw_char( RID(), Autoload.get_vector2(), Autoload.get_int(), Autoload.get_int(), Autoload.get_color(),Autoload.get_bool()))

		if randi() % 2 == 1:
			Autoload.qq = str(q_Font.get_ascent())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Font.get_descent())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Font.get_height())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Font.get_string_size( Autoload.get_string() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Font.get_wordwrap_string_size( Autoload.get_string(), Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(q_Font.has_outline())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Font.is_distance_field_hint())
		if randi() % 2 == 1:
			q_Font.update_changes()
