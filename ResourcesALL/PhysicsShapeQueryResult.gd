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
		
#		var q_PhysicsShapeQueryResult : PhysicsShapeQueryResult = PhysicsShapeQueryResult.new()
#
#		q_PhysicsShapeQueryResult.get_result_count()
#		q_PhysicsShapeQueryResult.get_result_object( 0 )
#		q_PhysicsShapeQueryResult.get_result_object_id( 0 ) 
#		q_PhysicsShapeQueryResult.get_result_object_shape( 0 )
#		q_PhysicsShapeQueryResult.get_result_rid( 0 )
		
		if Autoload.WRONG_BUGS:
			pass
