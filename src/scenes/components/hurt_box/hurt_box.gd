class_name HurtBox extends Node2D

@export var health: Health

func _on_body_entered(body: Node2D) -> void:
	pass
	
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("bullet"):
		health.take_damage(50)
