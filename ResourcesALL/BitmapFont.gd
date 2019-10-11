extends Node2D

var q_BitmapFont : BitmapFont = BitmapFont.new()
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
			q_BitmapFont = BitmapFont.new()
			
		
		if randi() % 2 == 1:
			q_BitmapFont.set_height(Autoload.get_randf())
		if randi() % 2 == 1:
			q_BitmapFont.set_ascent(Autoload.get_randf())
		if randi() % 2 == 1:
			q_BitmapFont.set_distance_field_hint(bool(randi()%2))
		if randi() % 2 == 1:
			q_BitmapFont.set_fallback(q_BitmapFont)
	
		if randi() % 2 == 1:
			q_BitmapFont.add_char( Autoload.get_randi(), Autoload.get_randi(), Rect2(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())), Vector2(Autoload.get_randf(),Autoload.get_randf()), Autoload.get_randf())
		if randi() % 2 == 1:
			q_BitmapFont.add_kerning_pair( Autoload.get_randi(), Autoload.get_randi(),Autoload.get_randi())
		if randi() % 2 == 1:
			q_BitmapFont.add_texture( Autoload.loadA("res://RES/Sprite.png"))
			
		if randi() % 2 == 1:
			q_BitmapFont.clear()
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				qq += str(q_BitmapFont.create_from_fnt( "res://RES/FreeMono.otf" ))
	
		if randi() % 2 == 1:
			qq += str(q_BitmapFont.get_char_size( Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_BitmapFont.get_kerning_pair(Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_BitmapFont.get_texture( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_BitmapFont.get_texture_count())
