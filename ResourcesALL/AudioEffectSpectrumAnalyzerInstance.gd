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
	#		var q_AudioEffectSpectrumAnalyzerInstance : AudioEffectSpectrumAnalyzerInstance = AudioEffectSpectrumAnalyzerInstance.new()
	#
	#		q_AudioEffectSpectrumAnalyzerInstance.get_magnitude_for_frequency_range( Autoload.get_float(), Autoload.get_float(), Autoload.get_int()) #MagnitudeMode
	#
