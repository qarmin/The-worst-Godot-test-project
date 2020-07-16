extends Node  #ConfirmationDialog

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#		nodeFunction(self,true)
#
#func nodeFunction(q_ConfirmationDialog : ConfirmationDialog, can_reset : bool = false) -> void:
#
#	if randi() % 2 == 1:
#		AutoControlAcceptDialog.nodeFunction(q_ConfirmationDialog)
#
#	if randi() % 2 == 1:
#		q_ConfirmationDialog.get_cancel()
