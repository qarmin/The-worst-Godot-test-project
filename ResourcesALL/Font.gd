extends Node2D

var q_Font : Font = BitmapFont.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_Font = BitmapFont.new()
			
			
		if randi() % 2 == 1:
			q_Font.draw( RID(), Autoload.get_vector2(), Autoload.get_string(), Autoload.get_color(), Autoload.get_int(), Autoload.get_color())
		if randi() % 2 == 1:
			qq += str(q_Font.draw_char( RID(), Autoload.get_vector2(), Autoload.get_int(), Autoload.get_int(), Autoload.get_color(),Autoload.get_bool()))

		if randi() % 2 == 1:
			qq += str(q_Font.get_ascent())
		if randi() % 2 == 1:
			qq += str(q_Font.get_descent())
		if randi() % 2 == 1:
			qq += str(q_Font.get_height())
		if randi() % 2 == 1:
			qq += str(q_Font.get_string_size( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_Font.get_wordwrap_string_size( Autoload.get_string(), Autoload.get_float()))

		if randi() % 2 == 1:
			qq += str(q_Font.has_outline())
		if randi() % 2 == 1:
			qq += str(q_Font.is_distance_field_hint())
		if randi() % 2 == 1:
			q_Font.update_changes()
