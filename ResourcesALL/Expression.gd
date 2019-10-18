extends Node2D

var q_Expression : Expression = Expression.new()
var q_temp0 : Node = load("res://RES/Node.tscn").instance()
onready var counter : float = Autoload.get_rand_time()

#	add_child(q_temp0)

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Expression = Expression.new()
			q_temp0.queue_free()
			q_temp0 = load("res://RES/Node.tscn").instance()
			add_child(q_temp0)

		if randi() % 2 == 1:
			Autoload.qq = str(q_Expression.execute( [Autoload.get_string()], q_temp0, Autoload.get_bool()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Expression.get_error_text())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Expression.has_execute_failed())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Expression.parse( Autoload.get_string(), Autoload.get_poolstringarray() ))

func delete_node():
	q_temp0.queue_free()
