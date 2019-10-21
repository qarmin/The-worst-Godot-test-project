extends Node2D

var q_BitmapFont : BitmapFont = BitmapFont.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_BitmapFont = BitmapFont.new()

		if randi() % 2 == 1:
			q_BitmapFont.set_height(Autoload.get_float())
		if randi() % 2 == 1:
			q_BitmapFont.set_ascent(Autoload.get_float())
		if randi() % 2 == 1:
			q_BitmapFont.set_distance_field_hint(Autoload.get_bool())
		if randi() % 2 == 1:
			q_BitmapFont.set_fallback(q_BitmapFont)

		if randi() % 2 == 1:
			q_BitmapFont.add_char( Autoload.get_int(), Autoload.get_int(), Autoload.get_rect2(), Autoload.get_vector2())
		if randi() % 2 == 1:
			q_BitmapFont.add_kerning_pair( Autoload.get_int(), Autoload.get_int(),Autoload.get_int())
		if randi() % 2 == 1:
			q_BitmapFont.add_texture( Autoload.loadA("Sprite.png"))

		if randi() % 2 == 1:
			q_BitmapFont.clear()
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				q_BitmapFont.create_from_fnt( "res://RES/FreeMono.otf" ))

		if randi() % 2 == 1:
			q_BitmapFont.get_char_size( Autoload.get_int(), Autoload.get_int()))
		if randi() % 2 == 1:
			q_BitmapFont.get_kerning_pair(Autoload.get_int(), Autoload.get_int()))
		if randi() % 2 == 1:
			q_BitmapFont.get_texture( Autoload.get_int()))
		if randi() % 2 == 1:
			q_BitmapFont.get_texture_count())
