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
		if !Autoload.RANDI:
			
			#q_AnimationNodeTransition.set_enabled_inputs(randi()%50)
			q_AnimationNodeTransition.set_cross_fade_time(randf() * 50)
			
#			for i in range(32):
#				q_AnimationNodeTransition.set("input_" + str(i) +"/name","Nazwa")
#				q_AnimationNodeTransition.set("input_" + str(i) +"/auto_advance",bool(randi()%2))
			
			if Autoload.WRONG_BUGS:
				q_AnimationNodeTransition.set_enabled_inputs(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_AnimationNodeTransition.set_cross_fade_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				
				q_AnimationNodeTransition.set("input_" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) +"/name",str(randf()))
				q_AnimationNodeTransition.set("input_" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) +"/auto_advance",bool(randi()%2))

		else: #RANDI
			if randi() % 2 == 1:
				q_AnimationNodeTransition.set_enabled_inputs(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AnimationNodeTransition.set_cross_fade_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				
			if randi() % 2 == 1:
				q_AnimationNodeTransition.set("input_" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) +"/name",str(randf()))
			if randi() % 2 == 1:
				q_AnimationNodeTransition.set("input_" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) +"/auto_advance",bool(randi()%2))
