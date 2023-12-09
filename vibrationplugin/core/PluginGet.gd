
static func get_plugin(plugin_name:String):
	if Engine.has_singleton(plugin_name):
		return Engine.get_singleton(plugin_name)
	else:
		printerr("Initialization error: unable to access the java logic")
	return null
