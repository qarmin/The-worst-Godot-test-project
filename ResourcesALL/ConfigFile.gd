extends Node2D

var q_ConfigFile : ConfigFile = ConfigFile.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ConfigFile,true)

func nodeFunction(q_ConfigFile : ConfigFile, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_ConfigFile = ConfigFile.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_ConfigFile)

	if randi() % 2 == 1:
		q_ConfigFile.erase_section( Autoload.get_string())

	if randi() % 2 == 1:
		q_ConfigFile.get_section_keys( Autoload.get_string())
	if randi() % 2 == 1:
		q_ConfigFile.get_sections()
	if randi() % 2 == 1:
		q_ConfigFile.get_value( Autoload.get_string(), Autoload.get_string(), Autoload.get_string())

	if randi() % 2 == 1:
		q_ConfigFile.has_section( Autoload.get_string())
	if randi() % 2 == 1:
		q_ConfigFile.has_section_key( Autoload.get_string(), Autoload.get_string())

	if randi() % 2 == 1:
		q_ConfigFile.load( "res://TEMP/" + Autoload.get_string())
	if randi() % 2 == 1:
		q_ConfigFile.save( "res://TEMP/ConfigFile.txt" )
	if randi() % 2 == 1:
		q_ConfigFile.set_value( Autoload.get_string(), Autoload.get_string(), Autoload.get_string())
