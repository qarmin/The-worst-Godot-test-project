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
#		var q_EditorFileSystemDirectory : EditorFileSystemDirectory = EditorFileSystemDirectory.new()
#
#		q_EditorFileSystemDirectory.find_dir_index( Autoload.get_string() )
#		q_EditorFileSystemDirectory.find_file_index( Autoload.get_string() )
#
#		q_EditorFileSystemDirectory.get_file( Autoload.get_int() )
#		q_EditorFileSystemDirectory.get_file_count()
#		q_EditorFileSystemDirectory.get_file_import_is_valid( Autoload.get_int() )
#		q_EditorFileSystemDirectory.get_file_path( Autoload.get_int() )
#		q_EditorFileSystemDirectory.get_file_script_class_extends( Autoload.get_int() )
#		q_EditorFileSystemDirectory.get_file_script_class_name( Autoload.get_int() )
#		q_EditorFileSystemDirectory.get_file_type( Autoload.get_int() )
#		q_EditorFileSystemDirectory.get_name()
#		q_EditorFileSystemDirectory.get_parent()
#		q_EditorFileSystemDirectory.get_path()
#		q_EditorFileSystemDirectory.get_subdir( Autoload.get_int() )
#		q_EditorFileSystemDirectory.get_subdir_count()
#
