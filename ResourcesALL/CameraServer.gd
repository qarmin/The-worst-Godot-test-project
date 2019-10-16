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
#		var q_CameraServer : CameraServer = CameraServer.new()
#
#		q_CameraServer.add_feed( CameraFeed.new())
#		q_CameraServer.feeds()
#
#		q_CameraServer.get_feed( Autoload.get_int())
#		q_CameraServer.get_feed_count()
#
#		q_CameraServer.remove_feed( CameraFeed.new() )
#
