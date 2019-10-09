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
		if !Autoload.RANDI:
			
			q_JSONParseResult.set_error(randi() % 48) #ERROR
			q_JSONParseResult.set_error_string("Bądź drzewem")
			q_JSONParseResult.set_error_line(randi()%50)
			q_JSONParseResult.set_result("Rezultat")
			
			if Autoload.WRONG_BUGS:
				q_JSONParseResult.set_error(randi() % Autoload.RANGE - Autoload.RANGE / 2) #ERROR
				q_JSONParseResult.set_error_string("Bądź drzewem")
				q_JSONParseResult.set_error_line(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_JSONParseResult.set_result("Rezultat")

		else: #RANDI
			if randi() % 2 == 1:
				q_JSONParseResult.set_error(randi() % Autoload.RANGE - Autoload.RANGE / 2) #ERROR
			if randi() % 2 == 1:
				q_JSONParseResult.set_error_string("Bądź drzewem")
			if randi() % 2 == 1:
				q_JSONParseResult.set_error_line(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_JSONParseResult.set_result("Rezultat")
