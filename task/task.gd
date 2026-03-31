extends Gal_gdsPlayer

func _ready() -> void:
	bg("res://addons/gal_talk/asset/background/park.png")
	await tap()
	setBg()


func setBg():
	bg("res://addons/gal_talk/asset/background/Library.png")
