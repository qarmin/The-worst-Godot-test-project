extends Node2D

var q_AudioEffectSpectrumAnalyzer : AudioEffectSpectrumAnalyzer = AudioEffectSpectrumAnalyzer.new()
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
		if randi() % 2 == 1:
			q_AudioEffectSpectrumAnalyzer = AudioEffectSpectrumAnalyzer.new()
			
		
		if randi() % 2 == 1:
			q_AudioEffectSpectrumAnalyzer.set_buffer_length(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectSpectrumAnalyzer.set_tap_back_pos(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectSpectrumAnalyzer.set_fft_size(Autoload.get_int())
