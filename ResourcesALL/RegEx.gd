extends Node2D

var q_RegEx : RegEx = RegEx.new()
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
			q_RegEx = RegEx.new()
		
		
		if randi() % 2 == 1:
			q_RegEx.clear()
		if randi() % 2 == 1:
			qq += str(q_RegEx.compile( Autoload.get_string() ))
			
		if randi() % 2 == 1:
			qq += str(q_RegEx.get_group_count())
		if randi() % 2 == 1:
			qq += str(q_RegEx.get_names())
		if randi() % 2 == 1:
			qq += str(q_RegEx.get_pattern())
			
		if randi() % 2 == 1:
			qq += str(q_RegEx.is_valid())
			
		if randi() % 2 == 1:
			qq += str(q_RegEx.search( Autoload.get_string(), Autoload.get_randi(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_RegEx.search_all( Autoload.get_string(), Autoload.get_randi(), Autoload.get_randi() ))
			
		if randi() % 2 == 1:
			qq += str(q_RegEx.sub( Autoload.get_string(), Autoload.get_string(), bool(randi()%2), Autoload.get_randi(), Autoload.get_randi() ))
