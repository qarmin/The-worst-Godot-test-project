extends Node2D

onready var counter: float = Autoload.get_rand_time()


#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_ResourceFormatSaver : ResourceFormatSaver = ResourceFormatSaver.new()
#
#		q_ResourceFormatSaver.get_recognized_extensions( Resource.new())
#		q_ResourceFormatSaver.recognize( Resource.new())
#		q_ResourceFormatSaver.save( Autoload.get_string(), Resource.new(), Autoload.get_int())
#
