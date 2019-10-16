extends Node2D

var q_DynamicFont : DynamicFont = DynamicFont.new()
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
			qq += str(q_DynamicFont.get_fallback( Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_DynamicFont.get_fallback_count())
			
		if randi() % 2 == 1:
			q_DynamicFont.remove_fallback( Autoload.get_int() )
#	BUG	if randi() % 2 == 1:
#			q_DynamicFont.set_fallback( Autoload.get_int(), Autoload.loadA("FreeMono.otf"))
