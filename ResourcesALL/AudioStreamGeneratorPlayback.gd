extends Node2D

@onready var counter: float = Autoload.get_rand_time()


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
#			var q_AudioStreamGeneratorPlayback : AudioStreamGeneratorPlayback = AudioStreamGeneratorPlayback.new()
#
#			q_AudioStreamGeneratorPlayback.can_push_buffer( Autoload.get_int())
#			q_AudioStreamGeneratorPlayback.clear_buffer()
#
#			q_AudioStreamGeneratorPlayback.get_frames_available())
#			q_AudioStreamGeneratorPlayback.get_skips())
#
#			q_AudioStreamGeneratorPlayback.push_buffer( Autoload.get_packedvector2array()))
#			q_AudioStreamGeneratorPlayback.push_frame( Autoload.get_vector2()))
#
