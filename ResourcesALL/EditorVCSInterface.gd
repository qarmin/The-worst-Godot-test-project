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
#		var q_EditorVCSInterface : EditorVCSInterface = EditorVCSInterface.new()
#			q_EditorVCSInterface.commit("Result")
#
#			qq += str(q_EditorVCSInterface.get_file_diff(Autoload.get_string()))
#			qq += str(q_EditorVCSInterface.get_is_vcs_intialized())
#			qq += str(q_EditorVCSInterface.get_modified_files_data())
#			qq += str(q_EditorVCSInterface.get_project_name())
#			qq += str(q_EditorVCSInterface.get_vcs_name())
#
#			qq += str(q_EditorVCSInterface.initialize(Autoload.get_string()))
#			qq += str(q_EditorVCSInterface.is_addon_ready())
#			qq += str(q_EditorVCSInterface.shut_down())
#			q_EditorVCSInterface.stage_file(Autoload.get_string())
#			q_EditorVCSInterface.unstage_file(Autoload.get_string())
