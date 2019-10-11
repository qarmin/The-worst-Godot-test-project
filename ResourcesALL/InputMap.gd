extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#		var q_InputMap : InputMap = InputMap.new()
#
#		#InputMap.action_add_event(Autoload.get_string(),InputEvent.new())
#		#InputMap.action_erase_event(Autoload.get_string(),InputEvent.new())
#		#InputMap.action_erase_events(Autoload.get_string())
#		#qq += str(InputMap.action_has_event(Autoload.get_string(),InputEvent.new()))
#		#InputMap.action_set_deadzone(Autoload.get_string(),randf() * 50)
#
#		InputMap.add_action(Autoload.get_string(),randf() * 50)
#		#InputMap.erase_action(Autoload.get_string())
#		#InputMap.event_is_action(InputEvent.new(),Autoload.get_string())
#
#		qq += str(InputMap.get_action_list(Autoload.get_string()))
#		qq += str(InputMap.get_actions())
#
#		qq += str(InputMap.has_action(Autoload.get_string()))
#		InputMap.load_from_globals()
#
