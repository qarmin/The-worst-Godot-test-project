extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_NativeScript : NativeScript = NativeScript.new()
#
#		q_NativeScript.set_class_name("Klasa")
#		q_NativeScript.set_library(GDNativeLibrary.new())
#		q_NativeScript.set_script_class_name(".")
#		q_NativeScript.set_script_class_icon_path(".")
#
#		qq += str(q_NativeScript.get_class_documentation())
#		qq += str(q_NativeScript.get_method_documentation( "Parapa" ))
#		qq += str(q_NativeScript.get_property_documentation( "Wlochy" ))
#		qq += str(q_NativeScript.get_signal_documentation( "Tysiac" ))
#		qq += str(q_NativeScript.new())
#
