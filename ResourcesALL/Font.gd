extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_Font : Font = Font.new()
#			q_Font.draw( RID(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), "Drzewo", Color(randf(),randf(),randf(),randf()), randi() % Autoload.RANGE - Autoload.RANGE / 2, Color(randf(),randf(),randf(),randf()))
#			qq += str(q_Font.draw_char( RID(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, Color(randf(),randf(),randf(),randf()),bool(randi()%2)))
#
#			qq += str(q_Font.get_ascent())
#			qq += str(q_Font.get_descent())
#			qq += str(q_Font.get_height())
#			qq += str(q_Font.get_string_size( "Pomidor" ))
#			qq += str(q_Font.get_wordwrap_string_size( "Wlochy", randf() * Autoload.RANGE - Autoload.RANGE / 2))
#
#			qq += str(q_Font.has_outline())
#			qq += str(q_Font.is_distance_field_hint())
#			q_Font.update_changes()
