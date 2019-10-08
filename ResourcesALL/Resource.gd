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
		var q_Resource : Resource = Resource.new()
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
			
			q_Resource.set_local_to_scene(bool(randi()%2))
			q_Resource.set_path(str(randi() % 100000))
			q_Resource.set_name(str(randi() % 100000))
			
			### q_Resource._setup_local_to_scene()
			qq += str(q_Resource.duplicate(bool(randi()%2)))
			qq += str(q_Resource.get_local_scene())
			qq += str(q_Resource.get_rid())
			q_Resource.setup_local_to_scene()
			q_Resource.take_over_path(str(randi() % 100000))
			
			if Autoload.WRONG_BUGS:
				q_Resource.set_local_to_scene(bool(randi()%2))
				q_Resource.set_path(str(randi() % 100000))
				q_Resource.set_name(str(randi() % 100000))
				
				### q_Resource._setup_local_to_scene()
				qq += str(q_Resource.duplicate(bool(randi()%2)))
				qq += str(q_Resource.get_local_scene())
				qq += str(q_Resource.get_rid())
				q_Resource.setup_local_to_scene()
				q_Resource.take_over_path(str(randi() % 100000))
		else: #RANDI
			if randi() % 2 == 1:
				q_Resource.set_local_to_scene(bool(randi()%2))
			if randi() % 2 == 1:
				q_Resource.set_path(str(randi() % 100000))
			if randi() % 2 == 1:
				q_Resource.set_name(str(randi() % 100000))
				
				### q_Resource._setup_local_to_scene()
			if randi() % 2 == 1:
				qq += str(q_Resource.duplicate(bool(randi()%2)))
			if randi() % 2 == 1:
				qq += str(q_Resource.get_local_scene())
			if randi() % 2 == 1:
				qq += str(q_Resource.get_rid())
			if randi() % 2 == 1:
				q_Resource.setup_local_to_scene()
			if randi() % 2 == 1:
				q_Resource.take_over_path(str(randi() % 100000))
