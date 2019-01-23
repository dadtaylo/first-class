extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	 if not global.caught:
		 self.position.x = get_global_mouse_position().x
	 pass
	
func go_collision(otherArea):
	print("ballcaught")
	if otherArea.get_parent().texture == load("res://icons/delapouite/originals/svg/dice-six-faces-one.svg"):
		global.labelDisplay = 1
		
		
	if otherArea.get_parent().texture == load("res://icons/delapouite/originals/svg/dice-six-faces-two.svg"):
		global.labelDisplay = 2
	
	if otherArea.get_parent().texture == load("res://icons/delapouite/originals/svg/dice-six-faces-three.svg"):
		global.labelDisplay = 3
		
	if otherArea.get_parent().texture == load("res://icons/delapouite/originals/svg/dice-six-faces-four.svg"):
		global.labelDisplay = 4
		
	if otherArea.get_parent().texture == load("res://icons/delapouite/originals/svg/dice-six-faces-five.svg"):
		global.labelDisplay = 5
		
	if otherArea.get_parent().texture == load("res://icons/delapouite/originals/svg/dice-six-faces-six.svg"):
		global.labelDisplay = 6
		
		pass
		

 