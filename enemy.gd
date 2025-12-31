extends Area2D

@export var speed = 400.0 

func _process(delta):
	# تحريك العدو للأسفل
	position.y += speed * delta
	
	# حذف العدو إذا خرج من الشاشة
	if position.y > 1000:
		queue_free()

# 1. عندما تصدم الرصاصة العدو (يموت العدو)
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("bullet"):
		queue_free() 
		area.queue_free() 

# 2. عندما يصدم العدو اللاعب (يموت اللاعب والعدو)# 2. عندما يصدم العدو اللاعب (يموت العدو فقط واللاعب يبقى)
func _on_body_entered(body: Node2D) -> void:
	# نتحقق إذا كان الذي اصطدم بالعدو هو اللاعب
	if body.name == "Player" or body.is_in_group("player"):
		print("اللاعب ضرب العدو!")
		# حذفنا سطر body.queue_free() لكي لا يختفي اللاعب
		queue_free() # هنا العدو فقط هو الذي يختفي (يموت)# حذف العدو
