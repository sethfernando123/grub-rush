extends Sprite2D
@onready var player_health_bar = $player_health_bar

var hp = 3

func _ready():
	player_health_bar.value = hp



func _on_add_health_pressed():
	hp += 1
	player_health_bar.value = hp

func _on_subtract_health_pressed():
	hp -= 1
	player_health_bar.value = hp
