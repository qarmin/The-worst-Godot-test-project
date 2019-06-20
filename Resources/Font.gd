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
		
#		var q_Font : Font = Font.new()
#
#		q_Font.draw( RID(), Vector2(randf() * 50,randf() * 50), "Drzewo", Color(randf(),randf(),randf(),randf()), randi()%50, Color(randf(),randf(),randf(),randf()))
#		qq += str(q_Font.draw_char( RID(), Vector2(randf() * 50,randf() * 50), randi()%50, randi()%50, Color(randf(),randf(),randf(),randf()),bool(randi()%2)))
#
#		qq += str(q_Font.get_ascent())
#		qq += str(q_Font.get_descent())
#		qq += str(q_Font.get_height())
#		qq += str(q_Font.get_string_size( "Pomidor" ))
#		qq += str(q_Font.get_wordwrap_string_size( "Wlochy", randf() * 50))
#
#		qq += str(q_Font.has_outline())
#		qq += str(q_Font.is_distance_field_hint())
#		q_Font.update_changes()
#
#		if Autoload.WRONG_BUGS:
#			q_Font.draw( RID(), Vector2(randf() * 1000 - 500,randf() * 1000 - 500), "Drzewo", Color(randf(),randf(),randf(),randf()), randi() % 1000 - 500, Color(randf(),randf(),randf(),randf()))
#			qq += str(q_Font.draw_char( RID(), Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randi() % 1000 - 500, randi() % 1000 - 500, Color(randf(),randf(),randf(),randf()),bool(randi()%2)))
#
#			qq += str(q_Font.get_ascent())
#			qq += str(q_Font.get_descent())
#			qq += str(q_Font.get_height())
#			qq += str(q_Font.get_string_size( "Pomidor" ))
#			qq += str(q_Font.get_wordwrap_string_size( "Wlochy", randf() * 1000 - 500))
#
#			qq += str(q_Font.has_outline())
#			qq += str(q_Font.is_distance_field_hint())
#			q_Font.update_changes()
