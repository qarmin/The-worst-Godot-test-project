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
#		var q_EditorExportPlugin : EditorExportPlugin = EditorExportPlugin.new()
#
#		### q_EditorExportPlugin._export_begin( PoolStringArray(["125125.125","12512.1251","122.124"]), bool(randi()%2), "Spustoszenie", randi()%50 )
#		### q_EditorExportPlugin._export_end()
#		### q_EditorExportPlugin._export_file( "Spustoszenie", "Ajrisz", PoolStringArray(["125125.125","12512.1251","122.124"]))
#
#		q_EditorExportPlugin.add_file( "Spustoszenie", PoolByteArray([11,124,1241,24,21,214,12,11]), bool(randi()%2) )
#		q_EditorExportPlugin.add_ios_bundle_file( "Spustoszenie" )
#		q_EditorExportPlugin.add_ios_cpp_code( "Wyspa" )
#		q_EditorExportPlugin.add_ios_framework( "Spustoszenie" )
#		q_EditorExportPlugin.add_ios_linker_flags( "Flagi")
#		q_EditorExportPlugin.add_ios_plist_content( "Coś")
#		q_EditorExportPlugin.add_shared_object( "Spustoszenie", PoolStringArray(["125125.125","12512.1251","122.124"]) )
#
#		q_EditorExportPlugin.skip()
#
#		if Autoload.WRONG_BUGS:
#			pass
