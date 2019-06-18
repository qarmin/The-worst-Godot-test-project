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
		
		var q_AnimationNodeStateMachine : AnimationNodeStateMachine = AnimationNodeStateMachine.new()
		
		q_AnimationNodeStateMachine.add_node( "Nuda", AnimationNode.new(), Vector2(randf() * 50,randf() * 50))
		q_AnimationNodeStateMachine.add_transition( "Levele", "Muszyna", AnimationNodeStateMachineTransition.new())
		qq += str(q_AnimationNodeStateMachine.get_end_node())
		qq += str(q_AnimationNodeStateMachine.get_graph_offset())
		qq += str(q_AnimationNodeStateMachine.get_node( "Nuda" ))
		qq += str(q_AnimationNodeStateMachine.get_node_name( AnimationNode.new()))
		qq += str(q_AnimationNodeStateMachine.get_node_position( "Nuda" ))
		qq += str(q_AnimationNodeStateMachine.get_start_node())
		qq += str(q_AnimationNodeStateMachine.get_transition( randi()%50 ))
		qq += str(q_AnimationNodeStateMachine.get_transition_count())
		qq += str(q_AnimationNodeStateMachine.get_transition_from( randi()%50 ))
		qq += str(q_AnimationNodeStateMachine.get_transition_to( randi()%50 ))
		qq += str(q_AnimationNodeStateMachine.has_node( "Nuda" ))
		qq += str(q_AnimationNodeStateMachine.has_transition( "Levele", "Muszyna" ))
		q_AnimationNodeStateMachine.remove_node( "Nuda" )
		q_AnimationNodeStateMachine.remove_transition( "Levele", "Muszyna" )
		q_AnimationNodeStateMachine.remove_transition_by_index(randi()%50 )
		q_AnimationNodeStateMachine.rename_node( "Nuda", "He he" )
		q_AnimationNodeStateMachine.set_end_node( "Nuda" )
		q_AnimationNodeStateMachine.set_graph_offset( Vector2(randf() * 50,randf() * 50))
		q_AnimationNodeStateMachine.set_node_position( "Nuda", Vector2(randf() * 50,randf() * 50))
		q_AnimationNodeStateMachine.set_start_node( "Nuda" )
		
		
		if Autoload.WRONG_BUGS:
			pass
