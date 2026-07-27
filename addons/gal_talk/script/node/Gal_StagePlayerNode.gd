class_name Gal_StagePlayerNode extends Control

@export var stage: Gal_Stage
var cur_block = null

var bg := Gal_BgNode.new()
var temp_node_arr := []

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

func _on_gui_input(event: InputEvent):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		play_talk()

func setup_bg():
	add_child(bg)
	move_child(bg, 0)

func add_BgTextNode(block: Gal_BgTextBlock):
	var lab = Gal_BgTextNode.new()
	lab.set_text(block.text)
	add_temp_node(lab)

func jump_to_lab(lab_name: String):
	var index = stage.get_lab_index(lab_name)
	if index == -1:
		push_warning("试图跳转至不存在的label")
		return
	else:
		play_talk(index)

func play_talk(target_index: int = -1):
	if stage.arr.size() <= 0:
		return
	
	# 如果传入了有效索引，直接跳转到指定位置
	if target_index != -1:
		cur_block = stage.arr[target_index]
	else:
		# 正常顺序播放
		if cur_block == null:
			cur_block = stage.arr[0]
		else:
			var index = stage.arr.find(cur_block)
			if index >= stage.arr.size() - 1:
				return
			else:
				index += 1
				cur_block = stage.arr[index]
	
	clean_temp()
	
	if cur_block is Gal_BgTextBlock:
		add_BgTextNode(cur_block)
	elif cur_block is Gal_BgImageSet:
		bg.texture = cur_block.image
		if cur_block.auto_continue:
			play_talk()
	elif cur_block is Gal_Label:
		if cur_block.auto_continue:
			play_talk()
