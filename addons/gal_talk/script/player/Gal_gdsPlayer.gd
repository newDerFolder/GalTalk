extends Node
class_name Gal_gdsPlayer


var background:TextureRect
signal taped
func _init() -> void:
	background=TextureRect.new()
	add_child(background)

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		taped.emit()

func tap():
	await taped
func bg(path:String):
	background.texture=load(path)
