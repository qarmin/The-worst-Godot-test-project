extends Node2D

var q_NodePath : NodePath
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
			q_NodePath = NodePath(".")
			
		if randi() % 2 == 1:
			qq += str(q_NodePath.get_as_property_path())
		if randi() % 2 == 1:
			qq += str(q_NodePath.get_concatenated_subnames())
		if randi() % 2 == 1:
			qq += str(q_NodePath.get_name( randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_NodePath.get_name_count())
		if randi() % 2 == 1:
			qq += str(q_NodePath.get_subname(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_NodePath.get_subname_count())
			
		if randi() % 2 == 1:
			qq += str(q_NodePath.is_absolute())
		if randi() % 2 == 1:
			qq += str(q_NodePath.is_empty())
