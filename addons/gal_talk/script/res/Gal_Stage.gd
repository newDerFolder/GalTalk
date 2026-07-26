class_name Gal_Stage extends Resource

@export var arr:Array[Gal_BaseBlock]=[]

func get_lab_index(lab_name:String)->int:
	for i in range(arr.size()):
		if arr[i] is Gal_Label and arr[i].label_name==lab_name:
			return i
	return -1
