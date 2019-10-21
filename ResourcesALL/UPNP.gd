extends Node2D

var q_UPNP : UPNP = UPNP.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_UPNP = UPNP.new()

		if randi() % 2 == 1:
			q_UPNP.set_discover_multicast_if(Autoload.get_string())
		if randi() % 2 == 1:
			q_UPNP.set_discover_local_port(Autoload.get_int())
		if randi() % 2 == 1:
			q_UPNP.set_discover_ipv6(Autoload.get_bool())

		if randi() % 2 == 1:
			q_UPNP.add_device( UPNPDevice.new())
		if randi() % 2 == 1:
			q_UPNP.add_port_mapping( Autoload.get_int(), Autoload.get_int(), Autoload.get_string(), Autoload.get_string(), Autoload.get_int()))

		if randi() % 2 == 1:
			q_UPNP.clear_devices()
		if randi() % 2 == 1:
			q_UPNP.delete_port_mapping( Autoload.get_int(), Autoload.get_string()))
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				q_UPNP.discover( Autoload.get_int(), Autoload.get_int(), Autoload.get_string()))

		if randi() % 2 == 1:
			q_UPNP.get_device( Autoload.get_int()))
		if randi() % 2 == 1:
			q_UPNP.get_device_count())
		if randi() % 2 == 1:
			q_UPNP.get_gateway())

		if randi() % 2 == 1:
			q_UPNP.query_external_address())
		if randi() % 2 == 1:
			q_UPNP.remove_device( Autoload.get_int())
		if randi() % 2 == 1:
			q_UPNP.set_device( Autoload.get_int(), UPNPDevice.new())
