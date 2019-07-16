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
		
		var q_AudioEffectEQ : AudioEffectEQ = AudioEffectEQ.new()
		
		qq += str(q_AudioEffectEQ.get_band_count())
		#qq += str(q_AudioEffectEQ.get_band_gain_db( randi()%50 ))
		#q_AudioEffectEQ.set_band_gain_db( randi()%50, randi()%50)

		
		if Autoload.WRONG_BUGS:
			pass
