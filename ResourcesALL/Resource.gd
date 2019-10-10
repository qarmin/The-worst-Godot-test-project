extends Node2D

var q_Resource : Resource = Resource.new()
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
			q_Resource = Resource.new()
			
		
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
