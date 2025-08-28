class_name Game extends Node2D

@onready var player: Character = $Character

func _ready() -> void:
	for i in range(0, 5):
		var coal: Coal = Coal.create(player, Vector2(200 + i * 25, 200 + i * 10))
		add_child(coal)
