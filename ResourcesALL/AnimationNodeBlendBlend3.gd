extends Node2D

var q_AnimationNodeBlend3 : AnimationNodeBlend3 = AnimationNodeBlend3.new()
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
			q_AnimationNodeBlend3 = AnimationNodeBlend3.new()
			
		if randi() % 2 == 1:
			q_AnimationNodeBlend3.set_use_sync(bool(randi()%2))
