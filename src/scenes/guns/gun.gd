class_name Gun extends Node2D

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("shoot"):
		var direction: Vector2 = (get_global_mouse_position() - global_position).normalized()
		var bullet: Bullet = Bullet.create(global_position, direction)
		get_tree().current_scene.add_child(bullet)