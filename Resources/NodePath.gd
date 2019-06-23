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
		
		var q_NodePath : NodePath
		
		q_NodePath = NodePath(".")
		
		qq += str(q_NodePath.get_as_property_path())
		qq += str(q_NodePath.get_concatenated_subnames())
		qq += str(q_NodePath.get_name( 0))
		qq += str(q_NodePath.get_name_count())
		#qq += str(q_NodePath.get_subname(0 ))
		qq += str(q_NodePath.get_subname_count())
		
		qq += str(q_NodePath.is_absolute())
		qq += str(q_NodePath.is_empty())
		
		if Autoload.WRONG_BUGS:
			pass
