extends Node2D

var q_Expression : Expression = Expression.new()
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
			q_Expression = Expression.new()
			
		
		var q_temp0 : Node = load("res://RES/Node.tscn").instance()
		if randi() % 2 == 1:
			qq += str(q_Expression.execute( ["Indeksy"], q_temp0, bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_Expression.get_error_text())
		if randi() % 2 == 1:
			qq += str(q_Expression.has_execute_failed())
		if randi() % 2 == 1:
			qq += str(q_Expression.parse( "Zaginiony", PoolStringArray(["Parapetówa"]) ))
			
		q_temp0.queue_free()
