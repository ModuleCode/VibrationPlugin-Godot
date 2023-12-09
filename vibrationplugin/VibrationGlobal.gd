extends Node

var	vibration_plugin:Object
const PluginGet = preload("res://addons/vibrationplugin/core/PluginGet.gd")
# Called when the node enters the scene tree for the first time.
func _ready():
	vibration_plugin=PluginGet.get_plugin("VibrationPlugin")
	pass # Replace with function body.


func vibration(time:int):
	if vibration_plugin:
		vibration_plugin.vibration(time)
	else:
		printerr("Please call get_singleton first!!")
