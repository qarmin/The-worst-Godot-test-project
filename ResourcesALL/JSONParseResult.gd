extends Node2D

var q_JSONParseResult : JSONParseResult = JSONParseResult.new()
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
			q_JSONParseResult = JSONParseResult.new()
			
		
		if randi() % 2 == 1:
			q_JSONParseResult.set_error(randi() % Autoload.RANGE - Autoload.RANGE / 2) #ERROR
		if randi() % 2 == 1:
			q_JSONParseResult.set_error_string("Bądź drzewem")
		if randi() % 2 == 1:
			q_JSONParseResult.set_error_line(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_JSONParseResult.set_result("Rezultat")
