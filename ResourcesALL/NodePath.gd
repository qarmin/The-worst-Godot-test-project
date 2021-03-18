extends Node2D

var q_NodePath : NodePath = Autoload.get_nodepath(self)


func _process(delta) -> void:
	
	if randi() % 20:
		if randi() % 2 == 1:
			q_NodePath = Autoload.get_nodepath(self)

	if randi() % 2 == 1:
		q_NodePath.get_as_property_path()
	if randi() % 2 == 1:
		q_NodePath.get_concatenated_subnames()
	if randi() % 2 == 1:
		q_NodePath.get_name( Autoload.get_int())
	if randi() % 2 == 1:
		q_NodePath.get_name_count()
	if randi() % 2 == 1:
		q_NodePath.get_subname(Autoload.get_int())
	if randi() % 2 == 1:
		q_NodePath.get_subname_count()

	if randi() % 2 == 1:
		q_NodePath.is_absolute()
	if randi() % 2 == 1:
		q_NodePath.is_empty()
