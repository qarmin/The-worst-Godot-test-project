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
			
		var q_AudioEffectRecord : AudioEffectRecord = AudioEffectRecord.new()
		if !Autoload.RANDI:
			
			q_AudioEffectRecord.set_format(randi() % 3) #Format
			
			#qq += str(q_AudioEffectRecord.get_recording())
			qq += str(q_AudioEffectRecord.is_recording_active())
			#q_AudioEffectRecord.set_recording_active( bool(randi()%2))
			
			if Autoload.WRONG_BUGS:
				q_AudioEffectRecord.set_format(randi() % Autoload.RANGE - Autoload.RANGE / 2) #Format
				
				qq += str(q_AudioEffectRecord.get_recording())
				qq += str(q_AudioEffectRecord.is_recording_active())
				q_AudioEffectRecord.set_recording_active( bool(randi()%2))

		else: #RANDI
			if randi() % 2 == 1:
				q_AudioEffectRecord.set_format(randi() % Autoload.RANGE - Autoload.RANGE / 2) #Format
				
			if randi() % 2 == 1:
				qq += str(q_AudioEffectRecord.get_recording())
			if randi() % 2 == 1:
				qq += str(q_AudioEffectRecord.is_recording_active())
			if randi() % 2 == 1:
				q_AudioEffectRecord.set_recording_active( bool(randi()%2))
