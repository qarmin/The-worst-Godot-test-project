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
		
		var q_PlaneMesh : PlaneMesh = PlaneMesh.new()
		if !Autoload.RANDI:
			
			q_PlaneMesh.set_size(Vector2(randf() * 50,randf() * 50))
			q_PlaneMesh.set_subdivide_width(randi() % 2) 
			q_PlaneMesh.set_subdivide_depth(randi() % 2)
			
			if Autoload.WRONG_BUGS:
				q_PlaneMesh.set_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_PlaneMesh.set_subdivide_width(randi() % 10 - 8) 
				q_PlaneMesh.set_subdivide_depth(randi() % 10 - 8)
		else: #RANDI
			if randi() % 2 == 1:
				q_PlaneMesh.set_size(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_PlaneMesh.set_subdivide_width(randi() % 10 - 8) 
			if randi() % 2 == 1:
				q_PlaneMesh.set_subdivide_depth(randi() % 10 - 8)
