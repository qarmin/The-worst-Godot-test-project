extends Node2D

var q_Dictionary : Dictionary = Autoload.get_dictionary()
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
			q_Dictionary = Autoload.get_dictionary()
		
		if randi() % 2 == 1:
			q_Dictionary.clear()
		if randi() % 2 == 1:
			qq += str(q_Dictionary.duplicate( Autoload.get_bool()))
		if randi() % 2 == 1:
			qq += str(q_Dictionary.empty())
		if randi() % 2 == 1:
			qq += str(q_Dictionary.erase( Autoload.get_string()))
		if randi() % 2 == 1:
			qq += str(q_Dictionary.get( Autoload.get_int(),Autoload.get_int()))
			
		if randi() % 2 == 1:
			qq += str(q_Dictionary.has( Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(q_Dictionary.has_all( [Autoload.get_string(), Autoload.get_string()] ))
		if randi() % 2 == 1:
			qq += str(q_Dictionary.hash())
			
		if randi() % 2 == 1:
			qq += str(q_Dictionary.keys())
		if randi() % 2 == 1:
			qq += str(q_Dictionary.size())
		if randi() % 2 == 1:
			qq += str(q_Dictionary.values())
