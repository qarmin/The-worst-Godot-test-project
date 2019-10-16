extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#
#		var q_ResourceLoader : ResourceLoader = ResourceLoader.new()
#
#		#Autoload.qq = str(ResourceLoader.exists(Autoload.get_string(), Autoload.get_string()))
#
#		Autoload.qq = str(ResourceLoader.get_dependencies(Autoload.get_string()))
#		#Autoload.qq = str(ResourceLoader.get_recognized_extensions_for_type(Autoload.get_string()))
#
#		#DEPRECATED Autoload.qq = str(ResourceLoader.has(Autoload.get_string()))
#		Autoload.qq = str(ResourceLoader.has_cached(Autoload.get_string()))
#
#		#Autoload.qq = str(ResourceLoader.load(Autoload.get_string(),Autoload.get_string(), Autoload.get_bool()))
#		#Autoload.qq = str(ResourceLoader.load_interactive(Autoload.get_string(),Autoload.get_string()))
#
#		ResourceLoader.set_abort_on_missing_resources(Autoload.get_bool())
#
