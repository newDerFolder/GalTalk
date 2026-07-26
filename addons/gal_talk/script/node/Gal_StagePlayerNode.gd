class_name Gal_StagePlayerNode extends Control

@export var stage:Gal_Stage
var cur_block=null



var bg:=Gal_BgNode.new()

var temp_node_arr=[]

func add_temp_node(node):
	temp_node_arr.append(node)
	add_child(node)
func clean_temp():
	for i in get_children():
		if temp_node_arr.has(i):
			i.queue_free()
	temp_node_arr.clear()

func _ready():
	gui_input.connect(_on_gui_input)
	setup_bg()

func _on_gui_input(event:InputEvent):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		play_talk()

func setup_bg():
	add_child(bg)
	move_child(bg, 0)

func add_BgTextNode(blcok:Gal_BgTextBlock):
	var lab=Gal_BgTextNode.new()
	lab.set_text(blcok.text)
	add_temp_node(lab)



func play_talk():
	if stage.arr.size()<=0:
		return
	if cur_block==null:
		cur_block=stage.arr[0]
	else:
		var index=stage.arr.find(cur_block)
		if index>=stage.arr.size()-1:
			return
		else:
			index+=1
			cur_block=stage.arr[index]
	clean_temp()
	if cur_block is Gal_BgTextBlock:
		add_BgTextNode(cur_block)
	elif cur_block is Gal_BgImageSet:
		bg.texture=cur_block.image
		play_talk()
		
