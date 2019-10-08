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
		
#		var q_ResourceSaver : ResourceSaver = ResourceSaver.new()
#
#		qq += str(ResourceSaver.get_recognized_extensions(CubeMesh.new()))
#		qq += str(ResourceSaver.save("asfadw",CubeMesh.new(),randi() % 128))  # SaverFlags
#
#		if Autoload.WRONG_BUGS:
#			pass
