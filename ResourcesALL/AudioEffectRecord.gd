extends Node2D

var q_AudioEffectRecord : AudioEffectRecord = AudioEffectRecord.new()
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
			q_AudioEffectRecord = AudioEffectRecord.new()
			
		
		if randi() % 2 == 1:
			q_AudioEffectRecord.set_format(Autoload.get_randi()) #Format
			
		if randi() % 2 == 1:
			qq += str(q_AudioEffectRecord.get_recording())
		if randi() % 2 == 1:
			qq += str(q_AudioEffectRecord.is_recording_active())
		if randi() % 2 == 1:
			q_AudioEffectRecord.set_recording_active( bool(randi()%2))
