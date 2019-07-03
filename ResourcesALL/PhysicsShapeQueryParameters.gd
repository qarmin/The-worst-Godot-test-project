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
		
		var q_PhysicsShapeQueryParameters : PhysicsShapeQueryParameters = PhysicsShapeQueryParameters.new()
		
		q_PhysicsShapeQueryParameters.set_collision_mask(randi()%50000)
		q_PhysicsShapeQueryParameters.set_exclude([11,124,1241,24,21,214,12,11])
		q_PhysicsShapeQueryParameters.set_margin(randf() * 50)
		q_PhysicsShapeQueryParameters.set_shape_rid(RID())
		q_PhysicsShapeQueryParameters.set_transform(Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		q_PhysicsShapeQueryParameters.set_collide_with_bodies(bool(randi()%2))
		q_PhysicsShapeQueryParameters.set_collide_with_areas(bool(randi()%2))
		
		q_PhysicsShapeQueryParameters.set_shape(BoxShape.new())
		
		if Autoload.WRONG_BUGS:
			q_PhysicsShapeQueryParameters.set_collision_mask(randi() % 1000 - 500)
			q_PhysicsShapeQueryParameters.set_exclude([11,124,1241,24,21,214,12,11])
			q_PhysicsShapeQueryParameters.set_margin(randf() * 1000 - 500)
			q_PhysicsShapeQueryParameters.set_shape_rid(RID())
			q_PhysicsShapeQueryParameters.set_transform(Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			q_PhysicsShapeQueryParameters.set_collide_with_bodies(bool(randi()%2))
			q_PhysicsShapeQueryParameters.set_collide_with_areas(bool(randi()%2))
			
			q_PhysicsShapeQueryParameters.set_shape(BoxShape.new())
