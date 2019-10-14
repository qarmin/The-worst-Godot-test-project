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
#		var q_EditorSceneImporter : EditorSceneImporter = EditorSceneImporter.new()
#
#		q_EditorSceneImporter._get_extensions()
#		q_EditorSceneImporter._get_import_flags()
#
#		q_EditorSceneImporter._import_animation( Autoload.get_string(), Autoload.get_int(), Autoload.get_int() )
#		q_EditorSceneImporter._import_scene( Autoload.get_string(), Autoload.get_int(), Autoload.get_int() )
#
#		q_EditorSceneImporter.import_animation_from_other_importer( Autoload.get_string(), Autoload.get_int(), Autoload.get_int() )
#		q_EditorSceneImporter.import_scene_from_other_importer( Autoload.get_string(), Autoload.get_int(), Autoload.get_int() )
#
