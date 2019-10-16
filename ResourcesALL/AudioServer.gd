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
#		var q_AudioServer : AudioServer = AudioServer.new()
#
#		q_AudioServer.add_bus( Autoload.get_int())
#		q_AudioServer.add_bus_effect( Autoload.get_int(), AudioEffect.new(),Autoload.get_int())
#
#		q_AudioServer.capture_get_device()
#		q_AudioServer.capture_get_device_list()
#		q_AudioServer.capture_set_device( Autoload.get_string())
#
#		q_AudioServer.generate_bus_layout()
#
#		q_AudioServer.get_bus_channels( Autoload.get_int() )
#		q_AudioServer.get_bus_count()
#		q_AudioServer.get_bus_effect( AutAutoload.get_int()load.get_int(), 0 )
#		q_AudioServer.get_bus_effect_count( Autoload.get_int() )
#		q_AudioServer.get_bus_effect_instance( AutAutAutoload.get_int()load.get_int()load.get_int(), 0, 0 )
#		q_AudioServer.get_bus_index( Autoload.get_string() )
#		q_AudioServer.get_bus_name( Autoload.get_int() )
#		q_AudioServer.get_bus_peak_volume_left_db( AutAutoload.get_int()load.get_int(), 0 )
#		q_AudioServer.get_bus_peak_volume_right_db( AutAutoload.get_int()load.get_int(), 0 )
#		q_AudioServer.get_bus_send( Autoload.get_int() )
#		q_AudioServer.get_bus_volume_db( Autoload.get_int() )
#		q_AudioServer.get_device()
#		q_AudioServer.get_device_list()
#		q_AudioServer.get_mix_rate()
#		q_AudioServer.get_output_latency()
#		q_AudioServer.get_speaker_mode()
#		q_AudioServer.get_time_since_last_mix()
#		q_AudioServer.get_time_to_next_mix()
#
#		q_AudioServer.is_bus_bypassing_effects( Autoload.get_int() )
#		q_AudioServer.is_bus_effect_enabled( AutAutoload.get_int()load.get_int(), 0 )
#		q_AudioServer.is_bus_mute( Autoload.get_int() )
#		q_AudioServer.is_bus_solo( Autoload.get_int() )
#
#		q_AudioServer.lock()
#		q_AudioServer.move_bus( AutAutoload.get_int()load.get_int(), 0 )
#
#		q_AudioServer.remove_bus( Autoload.get_int() )
#		q_AudioServer.remove_bus_effect( AutAutoload.get_int()load.get_int(), 0 )
#
#		q_AudioServer.set_bus_bypass_effects( Autoload.get_int(), Autoload.get_bool())
#		q_AudioServer.set_bus_count( Autoload.get_int() )
#		q_AudioServer.set_bus_effect_enabled( AutAutoload.get_int()load.get_int(), 0, Autoload.get_bool())
#		q_AudioServer.set_bus_layout( AudioBusLayout.new() )
#		q_AudioServer.set_bus_mute( Autoload.get_int(), Autoload.get_bool())
#		q_AudioServer.set_bus_name( Autoload.get_int(), Autoload.get_string() )
#		q_AudioServer.set_bus_send( Autoload.get_int(), Autoload.get_string() )
#		q_AudioServer.set_bus_solo( Autoload.get_int(), Autoload.get_bool())
#		q_AudioServer.set_bus_volume_db( Autoload.get_int(), Autoload.get_float())
#		q_AudioServer.set_device( Autoload.get_string())
#
#		q_AudioServer.swap_bus_effects( AutAutAutoload.get_int()load.get_int()load.get_int(), 0, 0 )
#		q_AudioServer.unlock()
#
