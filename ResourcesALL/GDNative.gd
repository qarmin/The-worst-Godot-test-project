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
			
			var q_GDNative : GDNative = GDNative.new()
			
			q_GDNative.set_library(Autoload.loadA("res://RES/GDNativeLibrary.tres",false))
			
			#q_GDNative.call_native( "Koncentracja", "Destylacja", ["Taka","Akcja"] )
			#qq += str(q_GDNative.initialize())
			#qq += str(q_GDNative.terminate())
			
			if Autoload.WRONG_BUGS:
				q_GDNative.set_library(Autoload.loadA("res://RES/GDNativeLibrary.tres",true))
				
				q_GDNative.call_native( "Koncentracja", "Destylacja", ["Taka","Akcja"] )
				qq += str(q_GDNative.initialize())
				qq += str(q_GDNative.terminate())
