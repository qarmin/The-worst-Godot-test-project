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
#		var q_EditorImportPlugin : EditorImportPlugin = EditorImportPlugin.new()
#
#		q_EditorImportPlugin.get_import_options( Autoload.get_int() )
#		q_EditorImportPlugin.get_import_order()
#		q_EditorImportPlugin.get_importer_name()
#		q_EditorImportPlugin.get_option_visibility( Autoload.get_string(), {245:25} )
#		q_EditorImportPlugin.get_preset_count()
#		q_EditorImportPlugin.get_preset_name( Autoload.get_int() )
#		q_EditorImportPlugin.get_priority()
#		q_EditorImportPlugin.get_recognized_extensions()
#		q_EditorImportPlugin.get_resource_type()
#		q_EditorImportPlugin.get_save_extension()
#		q_EditorImportPlugin.get_visible_name()
#		q_EditorImportPlugin.import( "res://Raas.pngAutoload.get_string(), {Autoload.get_string():24}, [25,Autoload.get_string()], [Autoload.get_string()] )
#
