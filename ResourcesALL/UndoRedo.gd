extends Node2D

#var q_UndoRedo : UndoRedo = UndoRedo.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#		nodeFunction(q_UndoRedo,true)

func nodeFunction(q_UndoRedo : UndoRedo, can_reset : bool = false) -> void:
	
	var q_node : Node = Node.new()
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_UndoRedo.free()
#			q_UndoRedo = UndoRedo.new()
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_UndoRedo)

	if randi() % 2 == 1:
		q_UndoRedo.add_do_method( q_node, Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_UndoRedo.add_do_property( q_node, Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_UndoRedo.add_do_reference( q_node )
	if randi() % 2 == 1:
		q_UndoRedo.add_undo_method( q_node, Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_UndoRedo.add_undo_property( q_node, Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_UndoRedo.add_undo_reference( q_node )

	if randi() % 2 == 1:
		q_UndoRedo.clear_history( Autoload.get_bool())
	if randi() % 2 == 1:
		q_UndoRedo.commit_action()
	if randi() % 2 == 1:
		q_UndoRedo.create_action( Autoload.get_string(), Autoload.get_int())#MergeMode

	if randi() % 2 == 1:
		q_UndoRedo.get_current_action_name()
	if randi() % 2 == 1:
		q_UndoRedo.get_version()

	if randi() % 2 == 1:
		q_UndoRedo.is_commiting_action()
	if randi() % 2 == 1:
		q_UndoRedo.redo()
	if randi() % 2 == 1:
		q_UndoRedo.undo()

	q_node.queue_free()


#func _exit_tree():
#	q_UndoRedo.free()
