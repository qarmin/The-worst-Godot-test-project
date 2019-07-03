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
		
		var q_AudioEffectSpectrumAnalyzer : AudioEffectSpectrumAnalyzer = AudioEffectSpectrumAnalyzer.new()
		
		q_AudioEffectSpectrumAnalyzer.set_buffer_length(randf() * 50)
		q_AudioEffectSpectrumAnalyzer.set_tap_back_pos(randf() * 50)
		q_AudioEffectSpectrumAnalyzer.set_fft_size(randi() % AudioEffectSpectrumAnalyzer.FFT_SIZE_MAX)
		
		if Autoload.WRONG_BUGS:
			q_AudioEffectSpectrumAnalyzer.set_buffer_length(randf() * 1000 - 500)
			q_AudioEffectSpectrumAnalyzer.set_tap_back_pos(randf() * 1000 - 500)
			q_AudioEffectSpectrumAnalyzer.set_fft_size(randi() % 1000 - 500)
