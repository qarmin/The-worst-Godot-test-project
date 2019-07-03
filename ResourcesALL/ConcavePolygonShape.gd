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
		
		var q_ConcavePolygonShape : ConcavePolygonShape = ConcavePolygonShape.new()
		
		qq += str(q_ConcavePolygonShape.get_faces())
		#q_ConcavePolygonShape.set_faces(PoolVector3Array([Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)]))
		
		if Autoload.WRONG_BUGS:
			qq += str(q_ConcavePolygonShape.get_faces())
			q_ConcavePolygonShape.set_faces(PoolVector3Array([Vector3(randi() % 1000 - 500,randi() % 1000 - 500,randi() % 1000 - 500),Vector3(randi() % 1000 - 500,randi() % 1000 - 500,randi() % 1000 - 500)]))
