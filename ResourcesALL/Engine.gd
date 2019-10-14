extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_Engine : Engine = Engine.new()
#
#		Engine.set_editor_hint(Autoload.get_bool())
#		#Engine.set_iterations_per_second(Autoload.get_int())
#		Engine.set_target_fps(Autoload.get_int() + 40)
#		Engine.set_time_scale(randf() + 1)
#		Engine.set_physics_jitter_fix(Autoload.get_float())
#
#		qq += str(Engine.get_author_info())
#		qq += str(Engine.get_copyright_info())
#		qq += str(Engine.get_donor_info())
#		qq += str(Engine.get_frames_drawn())
#		qq += str(Engine.get_frames_per_second())
#		qq += str(Engine.get_license_info())
#		qq += str(Engine.get_license_text())
#		qq += str(Engine.get_main_loop())
#		#qq += str(Engine.get_singleton(Autoload.get_string()))
#		qq += str(Engine.get_version_info())
#
#		qq += str(Engine.has_singleton(Autoload.get_string()))
#		qq += str(Engine.is_in_physics_frame())
#
