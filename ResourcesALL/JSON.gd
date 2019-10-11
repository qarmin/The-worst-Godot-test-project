extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_JSON : JSON = JSON.new()
#
#		qq += str(q_JSON.parse(Autoload.get_string()))
#		qq += str(q_JSON.print(Autoload.get_string(),Autoload.get_string(),bool(randi()%2)))
#
