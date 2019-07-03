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
		
		var q_Expression : Expression = Expression.new()
		
		var q_temp : Node = load("res://RES/Node.tscn").instance()
		#qq += str(q_Expression.execute( ["Indeksy"], Node.new(), bool(randi()%2)))
		q_temp.queue_free()
		qq += str(q_Expression.get_error_text())
		qq += str(q_Expression.has_execute_failed())
		qq += str(q_Expression.parse( "Zaginiony", PoolStringArray(["Parapetówa"]) ))
		
		if Autoload.WRONG_BUGS:
			var q_temp0 : Node = load("res://RES/Node.tscn").instance()
			qq += str(q_Expression.execute( ["Indeksy"], q_temp, bool(randi()%2)))
			q_temp0.queue_free()
			qq += str(q_Expression.get_error_text())
			qq += str(q_Expression.has_execute_failed())
			qq += str(q_Expression.parse( "Zaginiony", PoolStringArray(["Parapetówa"]) ))
