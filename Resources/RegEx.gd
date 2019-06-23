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
		
		var q_RegEx : RegEx = RegEx.new()
		
		q_RegEx.clear()
		qq += str(q_RegEx.compile( "Prosto" ))
		
		qq += str(q_RegEx.get_group_count())
		qq += str(q_RegEx.get_names())
		qq += str(q_RegEx.get_pattern())
		
		qq += str(q_RegEx.is_valid())
		
		qq += str(q_RegEx.search( "Napedzać", randi()%50, randi()%50 ))
		qq += str(q_RegEx.search_all( "Napedzać", randi()%50, randi()%50 ))
		
		qq += str(q_RegEx.sub( "Napedzać", "Obraz", bool(randi()%2), randi()%50, randi()%50 ))
		
		if Autoload.WRONG_BUGS:
			q_RegEx.clear()
			qq += str(q_RegEx.compile( "Prosto" ))
			
			qq += str(q_RegEx.get_group_count())
			qq += str(q_RegEx.get_names())
			qq += str(q_RegEx.get_pattern())
			
			qq += str(q_RegEx.is_valid())
			
			qq += str(q_RegEx.search( "Napedzać", randi() % 1000 - 500, randi() % 1000 - 500 ))
			qq += str(q_RegEx.search_all( "Napedzać", randi() % 1000 - 500, randi() % 1000 - 500 ))
			
			qq += str(q_RegEx.sub( "Napedzać", "Obraz", bool(randi()%2), randi() % 1000 - 500, randi() % 1000 - 500 ))
