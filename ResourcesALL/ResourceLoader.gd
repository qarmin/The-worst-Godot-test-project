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
#
#		var q_ResourceLoader : ResourceLoader = ResourceLoader.new()
#
#		#qq += str(ResourceLoader.exists(Autoload.get_string(), Autoload.get_string()))
#
#		qq += str(ResourceLoader.get_dependencies(Autoload.get_string()))
#		#qq += str(ResourceLoader.get_recognized_extensions_for_type(Autoload.get_string()))
#
#		#DEPRECATED qq += str(ResourceLoader.has(Autoload.get_string()))
#		qq += str(ResourceLoader.has_cached(Autoload.get_string()))
#
#		#qq += str(ResourceLoader.load(Autoload.get_string(),Autoload.get_string(), bool(randi() % 2)))
#		#qq += str(ResourceLoader.load_interactive(Autoload.get_string(),Autoload.get_string()))
#
#		ResourceLoader.set_abort_on_missing_resources(bool(randi() % 2))
#
