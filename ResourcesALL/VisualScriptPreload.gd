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
		
		var q_VisualScriptPreload : VisualScriptPreload = VisualScriptPreload.new()
		
		q_VisualScriptPreload.set_preload(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		
		if Autoload.WRONG_BUGS:
			q_VisualScriptPreload.set_preload(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
