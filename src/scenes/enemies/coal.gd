class_name Coal extends CharacterBody2D

const coal_scene: PackedScene = preload("res://scenes/enemies/coal.tscn")

const MAX_SPEED: float = 50

var player: Character

static func create(p_player: Character, p_position) -> Coal:
	var coal: Coal = coal_scene.instantiate()
	coal.player = p_player
	coal.global_position = p_position
	# Add components
	var follow: Follow = Follow.create(p_player, MAX_SPEED)
	coal.add_child(follow)
	
	return coal
