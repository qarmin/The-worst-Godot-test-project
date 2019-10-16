extends Node2D

onready var counter : float = Autoload.get_rand_time()

#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#
#		var q_TextureLayered : TextureLayered = TextureLayered.new()
#
#		q_TextureLayered.set_flags(Autoload.get_int() ) # Flags
#		q_TextureLayered._set_data({Autoload.get_string()})
#
#		q_TextureLayered.create( Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int() ) # Flags
#
#		Autoload.qq = str(q_TextureLayered.get_depth())
#		Autoload.qq = str(q_TextureLayered.get_format())
#		Autoload.qq = str(q_TextureLayered.get_height())
#		Autoload.qq = str(q_TextureLayered.get_layer_data( Autoload.get_int() ))
#		Autoload.qq = str(q_TextureLayered.get_width())
#
#		q_TextureLayered.set_data_partial( Image.new(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int() )
#		q_TextureLayered.set_layer_data( Image.new(), Autoload.get_int() )
#
