extends Node2D

var q_AudioEffectSpectrumAnalyzer : AudioEffectSpectrumAnalyzer = AudioEffectSpectrumAnalyzer.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioEffectSpectrumAnalyzer = AudioEffectSpectrumAnalyzer.new()

		if randi() % 2 == 1:
			q_AudioEffectSpectrumAnalyzer.set_buffer_length(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectSpectrumAnalyzer.set_tap_back_pos(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectSpectrumAnalyzer.set_fft_size(Autoload.get_int())
