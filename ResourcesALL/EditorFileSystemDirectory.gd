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
#		if !Autoload.RANDI:
#			pass
#
#		var q_EditorFileSystemDirectory : EditorFileSystemDirectory = EditorFileSystemDirectory.new()
#
#		q_EditorFileSystemDirectory.find_dir_index( "Połowa" )
#		q_EditorFileSystemDirectory.find_file_index( "Bramki" )
#
#		q_EditorFileSystemDirectory.get_file( 0 )
#		q_EditorFileSystemDirectory.get_file_count()
#		q_EditorFileSystemDirectory.get_file_import_is_valid( 0 )
#		q_EditorFileSystemDirectory.get_file_path( 0 )
#		q_EditorFileSystemDirectory.get_file_script_class_extends( 0 )
#		q_EditorFileSystemDirectory.get_file_script_class_name( 0 )
#		q_EditorFileSystemDirectory.get_file_type( 0 )
#		q_EditorFileSystemDirectory.get_name()
#		q_EditorFileSystemDirectory.get_parent()
#		q_EditorFileSystemDirectory.get_path()
#		q_EditorFileSystemDirectory.get_subdir( 0 )
#		q_EditorFileSystemDirectory.get_subdir_count()
#
#		if Autoload.WRONG_BUGS:
#			pass
