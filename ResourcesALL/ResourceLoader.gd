extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func alt_process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_ResourceLoader : ResourceLoader = ResourceLoader.new()
#
#		#ResourceLoader.exists(Autoload.get_string(), Autoload.get_string()))
#
#		ResourceLoader.get_dependencies(Autoload.get_string()))
#		#ResourceLoader.get_recognized_extensions_for_type(Autoload.get_string()))
#
#		#DEPRECATED ResourceLoader.has(Autoload.get_string()))
#		ResourceLoader.has_cached(Autoload.get_string()))
#
#		#ResourceLoader.load(Autoload.get_string(),Autoload.get_string(), Autoload.get_bool()))
#		#ResourceLoader.load_interactive(Autoload.get_string(),Autoload.get_string()))
#
#		ResourceLoader.set_abort_on_missing_resources(Autoload.get_bool())
#
