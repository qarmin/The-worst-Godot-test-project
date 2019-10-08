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
		
#		var q_ResourceLoader : ResourceLoader = ResourceLoader.new()
#
#		#qq += str(ResourceLoader.exists("asfafs", "fasfqawtg"))
#
#		qq += str(ResourceLoader.get_dependencies("asdtgwqfeaga"))
#		#qq += str(ResourceLoader.get_recognized_extensions_for_type("asdtgwqfeaga"))
#
#		#DEPRECATED qq += str(ResourceLoader.has("asdtgwqfeaga"))
#		qq += str(ResourceLoader.has_cached("asdtgwqfeaga"))
#
#		#qq += str(ResourceLoader.load("asdtgwqfeaga","asdtgwqfeaga", bool(randi() % 2)))
#		#qq += str(ResourceLoader.load_interactive("asdtgwqfeaga","asdtgwqfeaga"))
#
#		ResourceLoader.set_abort_on_missing_resources(bool(randi() % 2))
#
#		if Autoload.WRONG_BUGS:
#			pass
