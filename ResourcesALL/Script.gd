extends Node2D

var q_Script : Script = VisualScript.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Script,true)

func nodeFunction(q_Script : Script, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_Script = Script.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Script)

		
	if randi() % 2 == 1:
		q_Script.set_source_code(Autoload.get_string())
	
	if randi() % 2 == 1:
		q_Script.can_instance()
	
	if randi() % 2 == 1:
		q_Script.get_base_script()
	if randi() % 2 == 1:
		q_Script.get_instance_base_type()
	
	if randi() % 2 == 1:
		q_Script.has_script_signal( Autoload.get_string())
	if randi() % 2 == 1:
		q_Script.has_source_code()
	
	if randi() % 2 == 1:
		q_Script.instance_has( q_Script)
	if randi() % 2 == 1:
		q_Script.is_tool()
	if randi() % 2 == 1:
		q_Script.reload( Autoload.get_bool())
	
