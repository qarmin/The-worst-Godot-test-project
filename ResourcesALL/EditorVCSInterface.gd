extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
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
#		var q_EditorVCSInterface : EditorVCSInterface = EditorVCSInterface.new()
#			q_EditorVCSInterface.commit(Autoload.get_string())
#
#			Autoload.qq = str(q_EditorVCSInterface.get_file_diff(Autoload.get_string()))
#			Autoload.qq = str(q_EditorVCSInterface.get_is_vcs_intialized())
#			Autoload.qq = str(q_EditorVCSInterface.get_modified_files_data())
#			Autoload.qq = str(q_EditorVCSInterface.get_project_name())
#			Autoload.qq = str(q_EditorVCSInterface.get_vcs_name())
#
#			Autoload.qq = str(q_EditorVCSInterface.initialize(Autoload.get_string()))
#			Autoload.qq = str(q_EditorVCSInterface.is_addon_ready())
#			Autoload.qq = str(q_EditorVCSInterface.shut_down())
#			q_EditorVCSInterface.stage_file(Autoload.get_string())
#			q_EditorVCSInterface.unstage_file(Autoload.get_string())
