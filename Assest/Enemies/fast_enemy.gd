extends Area2D

@export var speed = 600.0 # للسرعة العالية اجعلها 700، وللثقيل اجعلها 200
func _process(delta):
	# التحريك للأسفل
	position.y += speed * delta 
	
	# حذف العدو إذا خرج من الشاشة (حتى لا يعلق الجهاز)
	if position.y > 1000:
		queue_free()
# لا تنسى ربط إشارة body_entered لهذه النود
func _on_body_entered(body: Node2D):
	if body.name == "Player":
		queue_free()
		
