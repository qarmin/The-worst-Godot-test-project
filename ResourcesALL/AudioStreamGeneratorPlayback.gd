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
#			var q_AudioStreamGeneratorPlayback : AudioStreamGeneratorPlayback = AudioStreamGeneratorPlayback.new()
#
#			q_AudioStreamGeneratorPlayback.can_push_buffer( Autoload.get_int())
#			q_AudioStreamGeneratorPlayback.clear_buffer()
#
#			qq += str(q_AudioStreamGeneratorPlayback.get_frames_available())
#			qq += str(q_AudioStreamGeneratorPlayback.get_skips())
#
#			qq += str(q_AudioStreamGeneratorPlayback.push_buffer( Autoload.get_poolvector2array()))
#			qq += str(q_AudioStreamGeneratorPlayback.push_frame( Autoload.get_vector2()))
#
