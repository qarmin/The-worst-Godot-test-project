extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#

#func alt_process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_NativeScript : NativeScript = NativeScript.new()
#
#		q_NativeScript.set_class_name(Autoload.get_string())
#		q_NativeScript.set_library(Autoload.loadA("GDNativeLibrary.tres"))
#		q_NativeScript.set_script_class_name(Autoload.get_nodepath(self))
#		q_NativeScript.set_script_class_icon_path(Autoload.get_nodepath(self))
#
#		Autoload.qq = str(q_NativeScript.get_class_documentation())
#		Autoload.qq = str(q_NativeScript.get_method_documentation( Autoload.get_string() ))
#		Autoload.qq = str(q_NativeScript.get_property_documentation( Autoload.get_string() ))
#		Autoload.qq = str(q_NativeScript.get_signal_documentation( Autoload.get_string() ))
#		Autoload.qq = str(q_NativeScript.new())
#
