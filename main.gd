extends Node2D

@export var enemy_scene: PackedScene

func _on_timer_timeout():
	spawn_enemy()

func spawn_enemy():
	if enemy_scene == null:
		print("Enemy scene not assigned!")
		return

	var enemy = enemy_scene.instantiate()
	var screen_width = get_viewport_rect().size.x

	enemy.position = Vector2(
		randf_range(50, screen_width - 50),
		-50
	)

	add_child(enemy)
