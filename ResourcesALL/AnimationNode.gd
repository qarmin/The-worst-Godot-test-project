extends Node2D

var q_AnimationNode : AnimationNode = AnimationNode.new()
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
			q_AnimationNode = AnimationNode.new()
			
		
		if randi() % 2 == 1:
			q_AnimationNode.set_filter_enabled(bool(randi()%2))
			
		### qq +=  str(q_AnimationNode.get_caption())
		### qq +=  str(q_AnimationNode.get_child_by_name("Miecz"))
		### qq +=  str(q_AnimationNode.get_child_nodes())
		### qq +=  str(q_AnimationNode.get_parameter_default_value("Grac"))
		### qq +=  str(q_AnimationNode.get_parameter_list())
		### qq +=  str(q_AnimationNode.has_filter())
		### q_AnimationNode.process( randf() * 50, bool(randi()%2) )
			
		if randi() % 2 == 1:
			q_AnimationNode.add_input("Strzala")
			
		if randi() % 2 == 1:
			q_AnimationNode.blend_animation( "Kolczan", randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2), randf() * Autoload.RANGE - Autoload.RANGE / 2 )
		if randi() % 2 == 1:
			qq += str(q_AnimationNode.blend_input( 0, randf() * Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2), randf() * Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2) ))#FilterAction
		if randi() % 2 == 1:
			qq += str(q_AnimationNode.blend_node( "Pra", AnimationNode.new(), randf() * Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2), randf() * Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2) ))#FilterAction
			
		if randi() % 2 == 1:
			qq +=  str(q_AnimationNode.get_input_count())
		if randi() % 2 == 1:
			qq +=  str(q_AnimationNode.get_input_name( randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq +=  str(q_AnimationNode.get_parameter( "Wiem" ))
			
		if randi() % 2 == 1:
			qq += str(q_AnimationNode.is_path_filtered( "." ))
		if randi() % 2 == 1:
			q_AnimationNode.remove_input( randi() % Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			q_AnimationNode.set_filter_path( ".", bool(randi()%2))
		if randi() % 2 == 1:
			q_AnimationNode.set_parameter( "Monitor", String() )
