extends Control

var host_device_dpi := 141.0
var stretch_mode := SceneTree.STRETCH_MODE_DISABLED
var stretch_aspect := SceneTree.STRETCH_ASPECT_IGNORE

var smallest_readable_font := 16.0
var smallest_used_font := 32.0

onready var target_device_dpi := OS.get_screen_dpi()

func _ready():
	var shrink = max(1, smallest_readable_font / smallest_used_font * target_device_dpi / host_device_dpi)
	get_tree().set_screen_stretch(stretch_mode, stretch_aspect, Vector2(640,480), shrink)
