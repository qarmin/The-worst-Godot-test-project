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
		
		var q_AnimationNodeBlendTree : AnimationNodeBlendTree = AnimationNodeBlendTree.new()
		
		q_AnimationNodeBlendTree.set_graph_offset(Vector2(randf() * 50,randf() * 50))
		
		q_AnimationNodeBlendTree.add_node( "Węzeł", AnimationNode.new(), Vector2(randf() * 50,randf() * 50))
		#q_AnimationNodeBlendTree.connect_node( "Ksztyna", randi()%50, "Barok" )
		#q_AnimationNodeBlendTree.disconnect_node( "Na niby", randi()%50 )
		#qq += str(q_AnimationNodeBlendTree.get_node( "Piątek" ))
		#qq += str(q_AnimationNodeBlendTree.get_node_position( "Krosy" ))
		qq += str(q_AnimationNodeBlendTree.has_node( "Brama" ))
		#q_AnimationNodeBlendTree.remove_node( "Samochód" )
		#q_AnimationNodeBlendTree.rename_node( "Łękołody", "Petarda" )
		#q_AnimationNodeBlendTree.set_node_position( "Źdźbło", Vector2(randf() * 50,randf() * 50))
		
		if Autoload.WRONG_BUGS:
			pass
			
			
			
			
