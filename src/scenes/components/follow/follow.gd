class_name Follow extends Node2D

@onready var parent: CharacterBody2D = get_parent()

const follow_scene: PackedScene = preload("res://scenes/components/follow/follow.tscn")

var target: Node2D
var speed: float
var direction: Vector2 = Vector2.ZERO

static func create(p_target: Node2D, p_speed: float) -> Follow:
	var follow: Follow = follow_scene.instantiate()
	follow.target = p_target
	follow.speed = p_speed
	return follow

func _ready() -> void:
	pass

func _physics_process(_delta: float) -> void:
	if !target: return
	
	direction = parent.global_position.direction_to(target.global_position)
	parent.velocity = speed * direction
	parent.move_and_slide()