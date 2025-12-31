extends Area2D

@export var speed = 500.0

func _process(delta):
	position.y += speed * delta
	
	if position.y > 1100:
		queue_free()
# ملاحظة: لا نضع هنا دالة _on_body_entered ولا نربط أي إشارات
