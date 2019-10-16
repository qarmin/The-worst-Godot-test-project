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
#		var q_ResourceSaver : ResourceSaver = ResourceSaver.new()
#
#		Autoload.qq = str(ResourceSaver.get_recognized_extensions(Autoload.loadA("CubeMesh.tres")))
#		Autoload.qq = str(ResourceSaver.save(Autoload.get_string(),Autoload.loadA("CubeMesh.tres"),Autoload.get_int())  # SaverFlags
#
