extends Node2D

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
		
		var q_BitmapFont : BitmapFont = BitmapFont.new()
		
		q_BitmapFont.set_height(randf() * 50)
		q_BitmapFont.set_ascent(randf() * 50)
		q_BitmapFont.set_distance_field_hint(bool(randi()%2))
		#q_BitmapFont.set_fallback(q_BitmapFont)

		q_BitmapFont.add_char( randi()%50, randi()%50, Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)), Vector2(randf() * 50,randf() * 50), randf() * 50)
		q_BitmapFont.add_kerning_pair( randi()%50, randi()%50,randi()%50)
		q_BitmapFont.add_texture( load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		
		q_BitmapFont.clear()
		#qq += str(q_BitmapFont.create_from_fnt( "res://FreeMono.otf" ))

		qq += str(q_BitmapFont.get_char_size( randi()%50, randi()%50 ))
		qq += str(q_BitmapFont.get_kerning_pair(randi()%50, randi()%50 ))
		#qq += str(q_BitmapFont.get_texture( randi()%50 ))
		qq += str(q_BitmapFont.get_texture_count())
		
		if Autoload.WRONG_BUGS:
			q_BitmapFont.set_height(randf() * 1000 - 500)
			q_BitmapFont.set_ascent(randf() * 1000 - 500)
			q_BitmapFont.set_distance_field_hint(bool(randi()%2))
			q_BitmapFont.set_fallback(q_BitmapFont)
	
			q_BitmapFont.add_char( randi() % 1000 - 500, randi() % 1000 - 500, Rect2(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)), Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randf() * 1000 - 500)
			q_BitmapFont.add_kerning_pair( randi() % 1000 - 500, randi() % 1000 - 500,randi() % 1000 - 500)
			q_BitmapFont.add_texture( load("res://Sprite" + str(randi()%4 + 1) + ".png"))
			
			q_BitmapFont.clear()
			qq += str(q_BitmapFont.create_from_fnt( "res://FreeMono.otf" ))
	
			qq += str(q_BitmapFont.get_char_size( randi() % 1000 - 500, randi() % 1000 - 500 ))
			qq += str(q_BitmapFont.get_kerning_pair(randi() % 1000 - 500, randi() % 1000 - 500 ))
			qq += str(q_BitmapFont.get_texture( randi() % 1000 - 500 ))
			qq += str(q_BitmapFont.get_texture_count())
