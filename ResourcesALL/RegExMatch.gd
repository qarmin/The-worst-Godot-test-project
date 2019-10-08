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
		if !Autoload.RANDI:
			
			var q_RegExMatch : RegExMatch = RegExMatch.new()
			
			qq += str(q_RegExMatch.get_subject())
			qq += str(q_RegExMatch.get_names())
			qq += str(q_RegExMatch.get_strings())
			
			qq += str(q_RegExMatch.get_end( String() ))
			qq += str(q_RegExMatch.get_group_count())
			qq += str(q_RegExMatch.get_start( String() ))
			qq += str(q_RegExMatch.get_string( String() ))
			
			if Autoload.WRONG_BUGS:
				qq += str(q_RegExMatch.get_subject())
				qq += str(q_RegExMatch.get_names())
				qq += str(q_RegExMatch.get_strings())
				
				qq += str(q_RegExMatch.get_end( String() ))
				qq += str(q_RegExMatch.get_group_count())
				qq += str(q_RegExMatch.get_start( String() ))
				qq += str(q_RegExMatch.get_string( String() ))
