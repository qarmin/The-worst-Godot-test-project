extends Node2D

var q_Physics2DShapeQueryParameters : Physics2DShapeQueryParameters = Physics2DShapeQueryParameters.new()
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
			q_Physics2DShapeQueryParameters = Physics2DShapeQueryParameters.new()
			
		
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_collision_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_exclude([11,124,1241,24,21,214,12,11])
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_margin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_motion(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_shape_rid(RID())
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_transform(Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * 50),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * 50)))
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_collide_with_bodies(bool(randi()%2))
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_collide_with_areas(bool(randi()%2))
			
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_shape(BoxShape.new())
