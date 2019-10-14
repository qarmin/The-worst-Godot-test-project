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
#		var q_EditorExportPlugin : EditorExportPlugin = EditorExportPlugin.new()
#
#		### q_EditorExportPlugin._export_begin( Autoload.get_poolstringarray(), Autoload.get_bool(), Autoload.get_string(), Autoload.get_int() )
#		### q_EditorExportPlugin._export_end()
#		### q_EditorExportPlugin._export_file( Autoload.get_string(), Autoload.get_string(), Autoload.get_poolstringarray())
#
#		q_EditorExportPlugin.add_file( Autoload.get_string(), Autoload.get_poolbytearray(), Autoload.get_bool() )
#		q_EditorExportPlugin.add_ios_bundle_file( Autoload.get_string() )
#		q_EditorExportPlugin.add_ios_cpp_code( Autoload.get_string() )
#		q_EditorExportPlugin.add_ios_framework( Autoload.get_string() )
#		q_EditorExportPlugin.add_ios_linker_flags( Autoload.get_string())
#		q_EditorExportPlugin.add_ios_plist_content( Autoload.get_string())
#		q_EditorExportPlugin.add_shared_object( Autoload.get_string(), Autoload.get_poolstringarray() )
#
#		q_EditorExportPlugin.skip()
#
