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
			
		var q_AnimationNodeStateMachinePlayback : AnimationNodeStateMachinePlayback = AnimationNodeStateMachinePlayback.new()
		if !Autoload.RANDI:
			
			qq += str(q_AnimationNodeStateMachinePlayback.get_current_node())
			qq += str(q_AnimationNodeStateMachinePlayback.get_travel_path())
			
			qq += str(q_AnimationNodeStateMachinePlayback.is_playing())
			q_AnimationNodeStateMachinePlayback.start( "Karamba" )
			q_AnimationNodeStateMachinePlayback.stop()
			q_AnimationNodeStateMachinePlayback.travel( "Kraknow" )
			
			if Autoload.WRONG_BUGS:
				qq += str(q_AnimationNodeStateMachinePlayback.get_current_node())
				qq += str(q_AnimationNodeStateMachinePlayback.get_travel_path())
				
				qq += str(q_AnimationNodeStateMachinePlayback.is_playing())
				q_AnimationNodeStateMachinePlayback.start( "Karamba" )
				q_AnimationNodeStateMachinePlayback.stop()
				q_AnimationNodeStateMachinePlayback.travel( "Kraknow" )

		else: #RANDI
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeStateMachinePlayback.get_current_node())
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeStateMachinePlayback.get_travel_path())
				
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeStateMachinePlayback.is_playing())
			if randi() % 2 == 1:
				q_AnimationNodeStateMachinePlayback.start( "Karamba" )
			if randi() % 2 == 1:
				q_AnimationNodeStateMachinePlayback.stop()
			if randi() % 2 == 1:
				q_AnimationNodeStateMachinePlayback.travel( "Kraknow" )
