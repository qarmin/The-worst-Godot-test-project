extends Node2D

var q_DynamicFont : DynamicFont = DynamicFont.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_DynamicFont = DynamicFont.new()

		if randi() % 2 == 1:
			q_DynamicFont.set_size(Autoload.get_int())
		if randi() % 2 == 1:
			q_DynamicFont.set_outline_size(Autoload.get_int())
		if randi() % 2 == 1:
			q_DynamicFont.set_outline_color(Autoload.get_color())
		if randi() % 2 == 1:
			q_DynamicFont.set_use_mipmaps(Autoload.get_bool())
		if randi() % 2 == 1:
			q_DynamicFont.set_use_filter(Autoload.get_bool())
		if randi() % 2 == 1:
			q_DynamicFont.set_spacing(Autoload.get_int(),Autoload.get_int())
#	BUG	if randi() % 2 == 1:
#			q_DynamicFont.set_font_data(Autoload.loadA("FreeMono.otf"))

#	LEAK	if randi() % 2 == 1:
#			q_DynamicFont.add_fallback(Autoload.loadA("FreeMono.otf"))

		if randi() % 2 == 1:
			Autoload.qq = str(q_DynamicFont.get_fallback( Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_DynamicFont.get_fallback_count())

		if randi() % 2 == 1:
			q_DynamicFont.remove_fallback( Autoload.get_int() )
#	BUG	if randi() % 2 == 1:
#			q_DynamicFont.set_fallback( Autoload.get_int(), Autoload.loadA("FreeMono.otf"))
