extends Node2D

# warning-ignore:unassigned_variable
var q_RID : RID

func _process(delta) -> void:
#	if randi() % 20:
#		if randi() % 2 == 1:
#			#q_RID = RID()

	if randi() % 2 == 1:
		q_RID.get_id()
