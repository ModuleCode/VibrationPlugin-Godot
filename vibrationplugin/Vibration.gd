extends Node
@export var time:int
var	vibration_plugin:Object
const PluginGet = preload("res://addons/vibrationplugin/core/PluginGet.gd")
func _ready():
	vibration_plugin=PluginGet.get_plugin("VibrationPlugin")
	
func vibration():
	if vibration_plugin:
		vibration_plugin.vibration(time)
	else:
		printerr("Please call get_singleton first!!")
