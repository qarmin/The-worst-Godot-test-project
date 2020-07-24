extends Node2D

@onready var counter: float = Autoload.get_rand_time()


#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#		var q_InputMap : InputMap = InputMap.new()
#
#		#InputMap.action_add_event(Autoload.get_string(),Autoload.loadA("InputEventAction.tres"))
#		#InputMap.action_erase_event(Autoload.get_string(),Autoload.loadA("InputEventAction.tres"))
#		#InputMap.action_erase_events(Autoload.get_string())
#		#InputMap.action_has_event(Autoload.get_string(),Autoload.loadA("InputEventAction.tres")))
#		#InputMap.action_set_deadzone(Autoload.get_string(),Autoload.get_float())
#
#		InputMap.add_action(Autoload.get_string(),Autoload.get_float())
#		#InputMap.erase_action(Autoload.get_string())
#		#InputMap.event_is_action(Autoload.loadA("InputEventAction.tres"),Autoload.get_string())
#
#		InputMap.get_action_list(Autoload.get_string()))
#		InputMap.get_actions())
#
#		InputMap.has_action(Autoload.get_string()))
#		InputMap.load_from_globals()
#
