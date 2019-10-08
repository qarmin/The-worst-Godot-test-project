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
		if !Autoload.RANDI:
			
			q_AnimationNodeBlendTree.set_graph_offset(Vector2(randf() * 50,randf() * 50))
			
			q_AnimationNodeBlendTree.add_node( "Wezel", AnimationNode.new(), Vector2(randf() * 50,randf() * 50))
			#q_AnimationNodeBlendTree.connect_node( "Ksztyna", randi()%50, "Barok" )
			#q_AnimationNodeBlendTree.disconnect_node( "Na niby", randi()%50 )
			#qq += str(q_AnimationNodeBlendTree.get_node( "Piatek" ))
			#qq += str(q_AnimationNodeBlendTree.get_node_position( "Krosy" ))
			qq += str(q_AnimationNodeBlendTree.has_node( "Brama" ))
			#q_AnimationNodeBlendTree.remove_node( "Samochnod" )
			#q_AnimationNodeBlendTree.rename_node( "lekolody", "Petarda" )
			#q_AnimationNodeBlendTree.set_node_position( "Źdźblo", Vector2(randf() * 50,randf() * 50))
			
			if Autoload.WRONG_BUGS:
				q_AnimationNodeBlendTree.set_graph_offset(Vector2(randf() * 50,randf() * 50))
				
				q_AnimationNodeBlendTree.add_node( "Wezel", AnimationNode.new(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_AnimationNodeBlendTree.connect_node( "Ksztyna", randi() % Autoload.RANGE - Autoload.RANGE / 2, "Barok" )
				q_AnimationNodeBlendTree.disconnect_node( "Na niby", randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				qq += str(q_AnimationNodeBlendTree.get_node( "Piatek" ))
				qq += str(q_AnimationNodeBlendTree.get_node_position( "Krosy" ))
				qq += str(q_AnimationNodeBlendTree.has_node( "Brama" ))
				q_AnimationNodeBlendTree.remove_node( "Samochnod" )
				q_AnimationNodeBlendTree.rename_node( "lekolody", "Petarda" )
				q_AnimationNodeBlendTree.set_node_position( "Źdźblo", Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		else: #RANDI
			if randi() % 2 == 1:
				q_AnimationNodeBlendTree.set_graph_offset(Vector2(randf() * 50,randf() * 50))
				
			if randi() % 2 == 1:
				q_AnimationNodeBlendTree.add_node( "Wezel", AnimationNode.new(), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_AnimationNodeBlendTree.connect_node( "Ksztyna", randi() % Autoload.RANGE - Autoload.RANGE / 2, "Barok" )
			if randi() % 2 == 1:
				q_AnimationNodeBlendTree.disconnect_node( "Na niby", randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeBlendTree.get_node( "Piatek" ))
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeBlendTree.get_node_position( "Krosy" ))
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeBlendTree.has_node( "Brama" ))
			if randi() % 2 == 1:
				q_AnimationNodeBlendTree.remove_node( "Samochnod" )
			if randi() % 2 == 1:
				q_AnimationNodeBlendTree.rename_node( "lekolody", "Petarda" )
			if randi() % 2 == 1:
				q_AnimationNodeBlendTree.set_node_position( "Źdźblo", Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
