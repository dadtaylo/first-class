extends Node2D
var dieSize = 0
var dieSprite = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
#	$Area2D/CollisionShape2D.set_disabled(false)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not global.caught:
		self.position.y += 4

	if self.position.y > 650: 

#		to handle random position
		self.position.y = -600
		self.position.x = rand_range(75, 949)

#		to handle random rotation
		self.rotation_degrees = rand_range(0, 360)

#		to handle random choice of 3 sizes
		dieSize = randi() % 3 + 1

#		to change die sprite
		dieSprite = randi() % 6 + 1

		$Area2D/CollisionShape2D.set_disabled(false)

#	to assign sizes
	if dieSize == 1:
		self.scale.x = 0.05
		self.scale.y = 0.05

	elif dieSize == 2:
		self.scale.x = 0.075
		self.scale.y = 0.075

	elif dieSize == 3:
		self.scale.x = 0.1
		self.scale.y = 0.1

	if dieSprite == 1:
		self.texture = load("res://icons/delapouite/originals/svg/dice-six-faces-one.svg")

	elif dieSprite == 2:
		self.texture = load("res://icons/delapouite/originals/svg/dice-six-faces-two.svg")

	elif dieSprite == 3:
		self.texture = load("res://icons/delapouite/originals/svg/dice-six-faces-three.svg")

	elif dieSprite == 4:
		self.texture =  load("res://icons/delapouite/originals/svg/dice-six-faces-four.svg")
	
	elif dieSprite == 5:
		self.texture = load("res://icons/delapouite/originals/svg/dice-six-faces-five.svg")
	
	elif dieSprite == 6:
		self.texture = load("res://icons/delapouite/originals/svg/dice-six-faces-six.svg")
	pass
	
func go_collision(otherArea):
	if otherArea.is_in_group("catch"):
	    global.caught = true
	

	elif otherArea.is_in_group("notCatch"):
		$Area2D/CollisionShape2D.set_disabled(true)
	pass