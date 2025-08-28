class_name Bullet extends Area2D

const bullet_scene: PackedScene = preload("res://scenes/bullets/bullet.tscn")

const MAX_SPEED: float = 250

var direction: Vector2 = Vector2.ZERO
var _velocity: Vector2 = Vector2.ZERO

static func create(p_position: Vector2, p_direction: Vector2) -> Bullet:
	var bullet: Bullet = bullet_scene.instantiate()
	bullet.global_position = p_position
	bullet.direction = p_direction
	return bullet

func _ready() -> void:
	pass
	
func _physics_process(delta: float) -> void:
	_velocity = MAX_SPEED * direction
	translate(_velocity * delta)