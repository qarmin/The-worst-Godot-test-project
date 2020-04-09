extends Node#AcceptDialog

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#		nodeFunction(self,true)
#
#func nodeFunction(q_AcceptDialog : AcceptDialog, can_reset : bool = false) -> void:
#
#	if randi() % 2 == 1:
#		AutoControlWindowDialog.nodeFunction(q_AcceptDialog)
#
#	if randi() % 2 == 1:
#		q_AcceptDialog.set_text(Autoload.get_string())
#	if randi() % 2 == 1:
#		q_AcceptDialog.set_hide_on_ok(Autoload.get_bool())
#
#		#LEAK q_AcceptDialog.add_button(Autoload.get_string(), Autoload.get_bool()))
#		#LEAK q_AcceptDialog.add_cancel(Autoload.get_string()))
#
#	if randi() % 2 == 1:
#		q_AcceptDialog.get_label()
#	if randi() % 2 == 1:
#		q_AcceptDialog.get_ok()
#
#	if randi() % 2 == 1:
#		q_AcceptDialog.register_text_enter(q_AcceptDialog)
