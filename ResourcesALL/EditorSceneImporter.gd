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
#		var q_EditorSceneImporter : EditorSceneImporter = EditorSceneImporter.new()
#
#		q_EditorSceneImporter._get_extensions()
#		q_EditorSceneImporter._get_import_flags()
#
#		q_EditorSceneImporter._import_animation( Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
#		q_EditorSceneImporter._import_scene( Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
#
#		q_EditorSceneImporter.import_animation_from_other_importer( Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
#		q_EditorSceneImporter.import_scene_from_other_importer( Autoload.get_string(), Autoload.get_int(), Autoload.get_int())
#
