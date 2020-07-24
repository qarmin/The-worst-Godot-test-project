extends Node2D

@onready var counter: float = Autoload.get_rand_time()


#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_Engine : Engine = Engine.new()
#
#		Engine.set_editor_hint(Autoload.get_bool())
#		#Engine.set_iterations_per_second(Autoload.get_int())
#		Engine.set_target_fps(Autoload.get_inti(40)) 
#		Engine.set_time_scale(Autoload.get_floatf(1.0))
#		Engine.set_physics_jitter_fix(Autoload.get_float())
#
#		Engine.get_author_info())
#		Engine.get_copyright_info())
#		Engine.get_donor_info())
#		Engine.get_frames_drawn())
#		Engine.get_frames_per_second())
#		Engine.get_license_info())
#		Engine.get_license_text())
#		Engine.get_main_loop())
#		#Engine.get_singleton(Autoload.get_string()))
#		Engine.get_version_info())
#
#		Engine.has_singleton(Autoload.get_string()))
#		Engine.is_in_physics_frame())
#
