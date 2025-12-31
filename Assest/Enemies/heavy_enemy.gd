extends Area2D

@export var speed = 400.0 # سرعة نزول العدو

func _process(delta):
	# تحريك العدو للأسفل
	position.y += speed * delta
	
	# حذف العدو إذا خرج من الشاشة (أسفل 1000 بكسل)
	if position.y > 1000:
		queue_free()
