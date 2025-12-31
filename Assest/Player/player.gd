extends CharacterBody2D

@export var speed = 600.0 

func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed
	move_and_slide()

	global_position.x = clamp(global_position.x, -510, 500)
