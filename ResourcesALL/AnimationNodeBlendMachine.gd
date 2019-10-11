extends Node2D

var q_AnimationNodeStateMachine : AnimationNodeStateMachine = AnimationNodeStateMachine.new()
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
			q_AnimationNodeStateMachine = AnimationNodeStateMachine.new()
		
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.add_node( Autoload.get_string(), AnimationNode.new(), Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.add_transition( Autoload.get_string(), Autoload.get_string(), AnimationNodeStateMachineTransition.new())
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.get_end_node())
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.get_graph_offset())
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.get_node( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.get_node_name( AnimationNode.new()))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.get_node_position( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.get_start_node())
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.get_transition( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.get_transition_count())
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.get_transition_from( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.get_transition_to( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.has_node( Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeStateMachine.has_transition( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.remove_node( Autoload.get_string() )
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.remove_transition( Autoload.get_string(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.remove_transition_by_index(Autoload.get_randi() )
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.rename_node( Autoload.get_string(), Autoload.get_string() )
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.set_end_node( Autoload.get_string() )
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.set_graph_offset( Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.set_node_position( Autoload.get_string(), Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_AnimationNodeStateMachine.set_start_node( Autoload.get_string() )
