extends TileMapLayer

@onready var roofs = $"."

func _on_area_2d_body_entered(body):
	print('hiding')
	roofs.hide()

func _on_area_2d_body_exited(body):
	print('showing')
	roofs.show()
