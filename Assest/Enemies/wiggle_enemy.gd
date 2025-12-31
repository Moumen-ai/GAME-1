extends Area2D

@export var speed = 300.0
@export var wiggle_amplitude = 15.0
@export var wiggle_speed = 10.0
var time_passed = 0.0

func _process(delta):
	# التحريك للأسفل
	position.y += speed * delta 
	
	# حذف العدو إذا خرج من الشاشة (حتى لا يعلق الجهاز)
	if position.y > 1000:
		queue_free()
	
	if position.y > 1100:
		queue_free()

func _on_body_entered(body: Node2D):
	if body.name == "Player":
		queue_free()
		
