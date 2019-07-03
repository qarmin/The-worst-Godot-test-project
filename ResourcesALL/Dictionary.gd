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
		
		var q_Dictionary : Dictionary = {}
		
		q_Dictionary.clear()
		qq += str(q_Dictionary.duplicate( bool(randi()%2)))
		qq += str(q_Dictionary.empty())
		qq += str(q_Dictionary.erase( "Klucze"))
		qq += str(q_Dictionary.get( randi()%50,randi()%50))
		
		qq += str(q_Dictionary.has( randi()%50))
		qq += str(q_Dictionary.has_all( ["klucz", "nie"] ))
		qq += str(q_Dictionary.hash())
		
		qq += str(q_Dictionary.keys())
		qq += str(q_Dictionary.size())
		qq += str(q_Dictionary.values())
		
		if Autoload.WRONG_BUGS:
			q_Dictionary.clear()
			qq += str(q_Dictionary.duplicate( bool(randi()%2)))
			qq += str(q_Dictionary.empty())
			qq += str(q_Dictionary.erase( "Klucze"))
			qq += str(q_Dictionary.get( randi() % 1000 - 500,randi() % 1000 - 500))
			
			qq += str(q_Dictionary.has( randi() % 1000 - 500))
			qq += str(q_Dictionary.has_all( ["klucz", "nie"] ))
			qq += str(q_Dictionary.hash())
			
			qq += str(q_Dictionary.keys())
			qq += str(q_Dictionary.size())
			qq += str(q_Dictionary.values())
