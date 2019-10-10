extends Node2D

var q_Dictionary : Dictionary = {}
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
			q_Dictionary.clear()
		if randi() % 2 == 1:
			qq += str(q_Dictionary.duplicate( bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_Dictionary.empty())
		if randi() % 2 == 1:
			qq += str(q_Dictionary.erase( "Klucze"))
		if randi() % 2 == 1:
			qq += str(q_Dictionary.get( randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(q_Dictionary.has( randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_Dictionary.has_all( ["klucz", "nie"] ))
		if randi() % 2 == 1:
			qq += str(q_Dictionary.hash())
			
		if randi() % 2 == 1:
			qq += str(q_Dictionary.keys())
		if randi() % 2 == 1:
			qq += str(q_Dictionary.size())
		if randi() % 2 == 1:
			qq += str(q_Dictionary.values())
