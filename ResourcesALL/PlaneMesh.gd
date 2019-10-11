extends Node2D

var q_PlaneMesh : PlaneMesh = PlaneMesh.new()
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
			q_PlaneMesh = PlaneMesh.new()
		
		
		if randi() % 2 == 1:
			q_PlaneMesh.set_size(Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_PlaneMesh.set_subdivide_width(randi() % 10 - 8) 
		if randi() % 2 == 1:
			q_PlaneMesh.set_subdivide_depth(randi() % 10 - 8)
