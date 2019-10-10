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
#		var q_EditorImportPlugin : EditorImportPlugin = EditorImportPlugin.new()
#
#		q_EditorImportPlugin.get_import_options( 0 )
#		q_EditorImportPlugin.get_import_order()
#		q_EditorImportPlugin.get_importer_name()
#		q_EditorImportPlugin.get_option_visibility( "Opcja", {245:25} )
#		q_EditorImportPlugin.get_preset_count()
#		q_EditorImportPlugin.get_preset_name( 0 )
#		q_EditorImportPlugin.get_priority()
#		q_EditorImportPlugin.get_recognized_extensions()
#		q_EditorImportPlugin.get_resource_type()
#		q_EditorImportPlugin.get_save_extension()
#		q_EditorImportPlugin.get_visible_name()
#		q_EditorImportPlugin.import( "res://Raas.png", "res://Raas.png", {"asf":24}, [25,String()], ["mnno"] )
#
