extends Area2D

@export var scene_to_load : PackedScene

func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	if not body.is_in_group("Player")
		return
		
		get_tree().change_scene_to_packed(scene_to_load)
		
