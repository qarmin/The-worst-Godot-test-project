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
		
		var q_AnimationNodeTransition : AnimationNodeTransition = AnimationNodeTransition.new()
		
		q_AnimationNodeTransition.set_enabled_inputs(randi()%50)
		q_AnimationNodeTransition.set_cross_fade_time(randf() * 50)
		
		for i in range(32):
			q_AnimationNodeTransition.set("input_" + str(i) +"/name","Nazwa")
			q_AnimationNodeTransition.set("input_" + str(i) +"/auto_advance",bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			pass
