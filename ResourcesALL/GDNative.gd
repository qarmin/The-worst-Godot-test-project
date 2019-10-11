extends Node2D

var q_GDNative : GDNative = GDNative.new()
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
			q_GDNative = GDNative.new()
			
		
		if randi() % 2 == 1:
			q_GDNative.set_library(Autoload.loadA("res://RES/GDNativeLibrary.tres",true))
			
		if randi() % 2 == 1:
			q_GDNative.call_native( Autoload.get_string(), Autoload.get_string(), [Autoload.get_string(),Autoload.get_string()] )
		if randi() % 2 == 1:
			qq += str(q_GDNative.initialize())
		if randi() % 2 == 1:
			qq += str(q_GDNative.terminate())
