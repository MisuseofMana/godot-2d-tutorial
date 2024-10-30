extends TileMapLayer

@onready var roofs = $"."

func _on_area_2d_body_entered(body):
	roofs.hide()

func _on_area_2d_body_exited(body):
	roofs.show()
