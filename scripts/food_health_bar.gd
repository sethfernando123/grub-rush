extends ProgressBar
@onready var food_health_bar = $"."

var food_hp = 3

func _ready():
	food_health_bar.value = food_hp

func _on_addhealth_food_pressed():
	food_hp += 1
	food_health_bar.value = food_hp


func _on_subtracthealthfood_pressed():
	food_hp -= 1
	food_health_bar.value = food_hp
