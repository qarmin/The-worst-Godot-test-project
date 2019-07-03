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
		
#		var q_Physics2DDirectSpaceState : Physics2DDirectSpaceState = Physics2DDirectSpaceState.new()
#
#		qq += str(q_Physics2DDirectSpaceState.cast_motion( Physics2DShapeQueryParameters.new() ))
#		qq += str(q_Physics2DDirectSpaceState.collide_shape( Physics2DShapeQueryParameters.new(), randi()%50))
#		qq += str(q_Physics2DDirectSpaceState.get_rest_info( Physics2DShapeQueryParameters.new() ))
#
#		qq += str(q_Physics2DDirectSpaceState.intersect_point( Vector2(randf() * 50,randf() * 50), randi()%50, [124,214,214,124,214,214,2], randi()%50, bool(randi()%2), bool(randi()%2) ))
#		qq += str(q_Physics2DDirectSpaceState.intersect_point_on_canvas( Vector2(randf() * 50,randf() * 50), randi()%50, randi()%50, [124,214,214,124,214,214,2], randi()%50, bool(randi()%2), bool(randi()%2) ))
#		qq += str(q_Physics2DDirectSpaceState.intersect_ray( Vector2(randf() * 50,randf() * 50), Vector2(randf() * 50,randf() * 50), [124,214,214,124,214,214,2], randi()%50, bool(randi()%2), bool(randi()%2) ))
#		qq += str(q_Physics2DDirectSpaceState.intersect_shape( Physics2DShapeQueryParameters.new(), randi()%50))
#
#		if Autoload.WRONG_BUGS:
#			pass
