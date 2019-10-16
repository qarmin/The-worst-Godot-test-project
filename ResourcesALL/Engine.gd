extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
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
#		Autoload.qq = str(Engine.get_author_info())
#		Autoload.qq = str(Engine.get_copyright_info())
#		Autoload.qq = str(Engine.get_donor_info())
#		Autoload.qq = str(Engine.get_frames_drawn())
#		Autoload.qq = str(Engine.get_frames_per_second())
#		Autoload.qq = str(Engine.get_license_info())
#		Autoload.qq = str(Engine.get_license_text())
#		Autoload.qq = str(Engine.get_main_loop())
#		#Autoload.qq = str(Engine.get_singleton(Autoload.get_string()))
#		Autoload.qq = str(Engine.get_version_info())
#
#		Autoload.qq = str(Engine.has_singleton(Autoload.get_string()))
#		Autoload.qq = str(Engine.is_in_physics_frame())
#
