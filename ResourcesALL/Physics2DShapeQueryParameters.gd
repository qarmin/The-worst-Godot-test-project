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
			q_Physics2DShapeQueryParameters.set_collision_layer(Autoload.get_int())
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_exclude(Autoload.get_array())
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_margin(Autoload.get_float())
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_motion(Autoload.get_vector2())
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_shape_rid(RID())
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_transform(Autoload.get_transform2d())
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_collide_with_bodies(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_collide_with_areas(Autoload.get_bool())
			
		if randi() % 2 == 1:
			q_Physics2DShapeQueryParameters.set_shape(BoxShape.new())
