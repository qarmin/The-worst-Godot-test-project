extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
			pass
		
#		var q_InputMap : InputMap = InputMap.new()
#
#		#InputMap.action_add_event("Geralt",InputEvent.new())
#		#InputMap.action_erase_event("swiat",InputEvent.new())
#		#InputMap.action_erase_events("Okno")
#		#qq += str(InputMap.action_has_event("Duck",InputEvent.new()))
#		#InputMap.action_set_deadzone("Kichacz",randf() * 50)
#
#		InputMap.add_action("APlik",randf() * 50)
#		#InputMap.erase_action("Brachol")
#		#InputMap.event_is_action(InputEvent.new(),"Pieniacz")
#
#		qq += str(InputMap.get_action_list("Bohater"))
#		qq += str(InputMap.get_actions())
#
#		qq += str(InputMap.has_action("Zlap"))
#		InputMap.load_from_globals()
#
#		if Autoload.WRONG_BUGS:
#			pass
