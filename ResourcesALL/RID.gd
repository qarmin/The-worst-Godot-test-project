extends Node2D

# warning-ignore:unassigned_variable
var q_RID: RID

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_RID, true)


func nodeFunction(q_RID: RID, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			#q_RID = RID()

	if randi() % 2 == 1:
		q_RID.get_id()
