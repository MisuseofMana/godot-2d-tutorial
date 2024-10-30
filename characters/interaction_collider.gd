extends Area2D
signal interaction

func call_interaction():
	print('attempting interact')

func _input(event):
	if event.is_action_pressed("interact"):
		call_interaction()
