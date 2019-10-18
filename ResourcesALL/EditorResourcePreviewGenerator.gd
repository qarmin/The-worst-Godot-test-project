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
#		var q_EditorResourcePreviewGenerator : EditorResourcePreviewGenerator = EditorResourcePreviewGenerator.new()
#
#		q_EditorResourcePreviewGenerator.can_generate_small_preview()
#		q_EditorResourcePreviewGenerator.generate( Resource.new(), Autoload.get_vector2())
#		q_EditorResourcePreviewGenerator.generate_from_path( Autoload.get_string(), Autoload.get_vector2())
#		q_EditorResourcePreviewGenerator.generate_small_preview_automatically()
#		q_EditorResourcePreviewGenerator.handles( Autoload.get_string() )
#
