class_name Health extends Node2D

signal health_depleted

@export var health: float

func take_damage(damage: float):
	health = max(health - damage, 0.0)
	print(health)
	if health == 0.0:
		health_depleted.emit()