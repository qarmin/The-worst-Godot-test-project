extends Node2D

@onready var counter: float = Autoload.get_rand_time()


#
#
#
func alt_process(delta) -> void:
	pass
#	counter -= delta
#
#
#
#	if counter <= 0:
#		counter = Autoload.get_rand_time()
#
#
#		var q_EditorExportPlugin : EditorExportPlugin = EditorExportPlugin.new()
#
#		### q_EditorExportPlugin._export_begin( Autoload.get_packedstringarray(), Autoload.get_bool(), Autoload.get_string(), Autoload.get_int())
#		### q_EditorExportPlugin._export_end()
#		### q_EditorExportPlugin._export_file( Autoload.get_string(), Autoload.get_string(), Autoload.get_packedstringarray())
#
#		q_EditorExportPlugin.add_file( Autoload.get_string(), Autoload.get_packedbytearray(), Autoload.get_bool())
#		q_EditorExportPlugin.add_ios_bundle_file( Autoload.get_string())
#		q_EditorExportPlugin.add_ios_cpp_code( Autoload.get_string())
#		q_EditorExportPlugin.add_ios_framework( Autoload.get_string())
#		q_EditorExportPlugin.add_ios_linker_flags( Autoload.get_string())
#		q_EditorExportPlugin.add_ios_plist_content( Autoload.get_string())
#		q_EditorExportPlugin.add_shared_object( Autoload.get_string(), Autoload.get_packedstringarray())
#
#		q_EditorExportPlugin.skip()
#
