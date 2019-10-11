extends Node2D

var q_PackedScene : PackedScene = PackedScene.new()
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
			q_PackedScene = PackedScene.new()
		
		
		if randi() % 2 == 1:
			qq += str(q_PackedScene.can_instance())
		if randi() % 2 == 1:
			qq += str(q_PackedScene.get_state())
#	BUG	if randi() % 2 == 1:
#			qq += str(q_PackedScene.instance( Autoload.get_randi() ).queue_free()) # GenEditState
		if randi() % 2 == 1:
			qq += str(q_PackedScene.pack( self ))
