extends Node2D

var q_PhysicsShapeQueryParameters : PhysicsShapeQueryParameters = PhysicsShapeQueryParameters.new()
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
			q_PhysicsShapeQueryParameters = PhysicsShapeQueryParameters.new()
		
		
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_collision_mask(Autoload.get_int())
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_exclude([11,124,1241,24,21,214,12,11])
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_margin(Autoload.get_float())
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_shape_rid(RID())
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_transform(Transform(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_collide_with_bodies(Autoload.get_bool())
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_collide_with_areas(Autoload.get_bool())
			
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_shape(BoxShape.new())
