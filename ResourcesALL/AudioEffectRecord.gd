extends Node2D

var q_AudioEffectRecord : AudioEffectRecord = AudioEffectRecord.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AudioEffectRecord = AudioEffectRecord.new()

		if randi() % 2 == 1:
			q_AudioEffectRecord.set_format(Autoload.get_int()) #Format

		if randi() % 2 == 1:
			Autoload.qq = str(q_AudioEffectRecord.get_recording())
		if randi() % 2 == 1:
			Autoload.qq = str(q_AudioEffectRecord.is_recording_active())
		if randi() % 2 == 1:
			q_AudioEffectRecord.set_recording_active( Autoload.get_bool())
