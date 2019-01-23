extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global.labelDisplay == 1:
		$Label1.visible = true
	
	if global.labelDisplay == 2:
		$Label2.visible = true
	
	if global.labelDisplay == 3:
		$Label3.visible = true
		
	if global.labelDisplay == 4:
		$Label4.visible = true
		
	if global.labelDisplay == 5:
		$Label5.visible = true
		
	if global.labelDisplay == 6:
		$Label6.visible = true
	
	
	
	
		pass   