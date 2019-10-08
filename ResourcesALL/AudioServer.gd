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
		
#		var q_AudioServer : AudioServer = AudioServer.new()
#
#		q_AudioServer.add_bus( randi()%50)
#		q_AudioServer.add_bus_effect( 0, AudioEffect.new(),randi()%50)
#
#		q_AudioServer.capture_get_device()
#		q_AudioServer.capture_get_device_list()
#		q_AudioServer.capture_set_device( "Prowadzenie")
#
#		q_AudioServer.generate_bus_layout()
#
#		q_AudioServer.get_bus_channels( 0 )
#		q_AudioServer.get_bus_count()
#		q_AudioServer.get_bus_effect( 0, 0 )
#		q_AudioServer.get_bus_effect_count( 0 )
#		q_AudioServer.get_bus_effect_instance( 0, 0, 0 )
#		q_AudioServer.get_bus_index( "Szansa" )
#		q_AudioServer.get_bus_name( 0 )
#		q_AudioServer.get_bus_peak_volume_left_db( 0, 0 )
#		q_AudioServer.get_bus_peak_volume_right_db( 0, 0 )
#		q_AudioServer.get_bus_send( 0 )
#		q_AudioServer.get_bus_volume_db( 0 )
#		q_AudioServer.get_device()
#		q_AudioServer.get_device_list()
#		q_AudioServer.get_mix_rate()
#		q_AudioServer.get_output_latency()
#		q_AudioServer.get_speaker_mode()
#		q_AudioServer.get_time_since_last_mix()
#		q_AudioServer.get_time_to_next_mix()
#
#		q_AudioServer.is_bus_bypassing_effects( 0 )
#		q_AudioServer.is_bus_effect_enabled( 0, 0 )
#		q_AudioServer.is_bus_mute( 0 )
#		q_AudioServer.is_bus_solo( 0 )
#
#		q_AudioServer.lock()
#		q_AudioServer.move_bus( 0, 0 )
#
#		q_AudioServer.remove_bus( 0 )
#		q_AudioServer.remove_bus_effect( 0, 0 )
#
#		q_AudioServer.set_bus_bypass_effects( 0, bool(randi()%2))
#		q_AudioServer.set_bus_count( 0 )
#		q_AudioServer.set_bus_effect_enabled( 0, 0, bool(randi()%2))
#		q_AudioServer.set_bus_layout( AudioBusLayout.new() )
#		q_AudioServer.set_bus_mute( 0, bool(randi()%2))
#		q_AudioServer.set_bus_name( 0, "Stracony" )
#		q_AudioServer.set_bus_send( 0, "Trawa" )
#		q_AudioServer.set_bus_solo( 0, bool(randi()%2))
#		q_AudioServer.set_bus_volume_db( 0, randf() * 50)
#		q_AudioServer.set_device( "Napastnik")
#
#		q_AudioServer.swap_bus_effects( 0, 0, 0 )
#		q_AudioServer.unlock()
		
		if Autoload.WRONG_BUGS:
			pass
