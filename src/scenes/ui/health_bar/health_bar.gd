class_name HealthBar extends TextureProgressBar

@export var health: Health

func _ready() -> void:
	health.took_damage.connect(Callable(_on_took_damage))
	max_value = health.max_health
	value = health.health
	
func _on_took_damage():
	value = health.health
