extends Node2D

var q_Reference : Reference = Reference.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Reference,true)

func nodeFunction(q_Reference : Reference, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_Reference.unreference()
			q_Reference = Reference.new()
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Reference)
		
	if randi() % 2 == 1:
		q_Reference.init_ref()
	if randi() % 2 == 1:
		q_Reference.reference()
	if randi() % 2 == 1:
		q_Reference.unreference()


func _exit_tree():
	q_Reference.unreference()
