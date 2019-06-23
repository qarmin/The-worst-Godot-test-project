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
		
		var q_JSONParseResult : JSONParseResult = JSONParseResult.new()
		
		q_JSONParseResult.set_error(randi() % 48) #ERROR
		q_JSONParseResult.set_error_string("Bądź drzewem")
		q_JSONParseResult.set_error_line(randi()%50)
		q_JSONParseResult.set_result("Rezultat")
		
		if Autoload.WRONG_BUGS:
			pass
