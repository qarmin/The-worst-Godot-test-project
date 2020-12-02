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

#	if randi() % 2 == 1:
#		q_Font.set_size(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Font.set_outline_size(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Font.set_outline_color(Autoload.get_color())
#	if randi() % 2 == 1: #MISSING
#		q_Font.set_use_mipmaps(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Font.set_use_filter(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_Font.set_spacing(Autoload.get_int(),Autoload.get_int())
#	BUG	if randi() % 2 == 1:
#			q_Font.set_font_data(Autoload.loadA("FreeMono.otf"))

#	LEAK	if randi() % 2 == 1:
#			q_Font.add_fallback(Autoload.loadA("FreeMono.otf"))

#	if randi() % 2 == 1:
#		q_Font.get_fallback( Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Font.get_fallback_count()
#
#	if randi() % 2 == 1:
#		q_Font.remove_fallback( Autoload.get_int())
#	if randi() % 2 == 1:
#		q_Font.set_fallback( Autoload.get_int(), Autoload.loadA("FreeMono.otf"))
