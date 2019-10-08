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
		if !Autoload.RANDI:
			pass
		
#		var q_PhysicsDirectSpaceState : PhysicsDirectSpaceState = PhysicsDirectSpaceState.new()
#
#		q_PhysicsDirectSpaceState.cast_motion( PhysicsShapeQueryParameters.new(), Vector3(randf() * 50,randf() * 50,randf() * 50) )
#		q_PhysicsDirectSpaceState.collide_shape( PhysicsShapeQueryParameters.new(),randi()%50)
#		q_PhysicsDirectSpaceState.get_rest_info( PhysicsShapeQueryParameters.new() )
#
#		q_PhysicsDirectSpaceState.intersect_ray( Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50),[124,214,214,124,214,214,2], bool(randi()%2), bool(randi()%2), bool(randi()%2) )
#		q_PhysicsDirectSpaceState.intersect_shape( PhysicsShapeQueryParameters.new(), randi()%50)
#
#		if Autoload.WRONG_BUGS:
#			pass
