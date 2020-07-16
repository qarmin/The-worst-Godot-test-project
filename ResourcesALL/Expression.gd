extends Node2D

var q_Expression: Expression = Expression.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Expression, true)


func nodeFunction(q_Expression: Expression, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Expression = Expression.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_Expression)

	### START TEMP
	var temp_Node: Node = Node.new()
	AutoObjects.A_Node(temp_Node)

	### END TEMP

	if randi() % 2 == 1:
		q_Expression.execute(Autoload.get_array(), temp_Node, Autoload.get_bool())
	if randi() % 2 == 1:
		q_Expression.get_error_text()
	if randi() % 2 == 1:
		q_Expression.has_execute_failed()
	if randi() % 2 == 1:
		q_Expression.parse(Autoload.get_string(), Autoload.get_packedstringarray())

	### CLEANING
	temp_Node.queue_free()
	### END CLEANING
