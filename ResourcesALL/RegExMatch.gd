extends Node2D

var q_RegExMatch : RegExMatch = RegExMatch.new()
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
			q_RegExMatch = RegExMatch.new()
			
		
		if randi() % 2 == 1:
			qq += str(q_RegExMatch.get_subject())
		if randi() % 2 == 1:
			qq += str(q_RegExMatch.get_names())
		if randi() % 2 == 1:
			qq += str(q_RegExMatch.get_strings())
			
		if randi() % 2 == 1:
			qq += str(q_RegExMatch.get_end( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_RegExMatch.get_group_count())
		if randi() % 2 == 1:
			qq += str(q_RegExMatch.get_start( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_RegExMatch.get_string( Autoload.get_string() ))
