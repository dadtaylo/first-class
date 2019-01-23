extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.


func _ready():
	pass
	
	
func _procees(delta):
	if Input.is_action_just_pressed("Roll the dice"):
		global.diceRoll = rand_range(1,7)
		$dice/AnimatedSprite.playing = true
		$dice/AnimatedSprite.visible = true
		$dice/animator.start()
		$dice/Sprite.visible = false
		$dice/dice.visible = false
		pass
		
		
func _on_animTimer_timeout():
	if global.diceRoll >=1 and global.diceRoll < 2:
		global.rollResult = 1
		$dice/dice.visible = true
		$dice/AnimatedSprite.playing = false
		$dice/AnimatedSprite.visible = false

	if global.diceRoll >=2 and global.diceRoll < 3:
		global.rollResult = 2
		$dice/dice.visible = true
		$dice/AnimatedSprite.playing = false
		$dice/AnimatedSprite.visible = false
		
		if global.diceRoll >=3 and global.diceRoll < 4:
		global.rollResult = 3
		$dice/dice.visible = true
		$dice/AnimatedSprite.playing = false
		$dice/AnimatedSprite.visible = false	
		
		if global.diceRoll >=4  and global.diceRoll < 5:
		global.rollResult = 4
		$dice/dice.visible = true
		$dice/AnimatedSprite.playing = false
		$dice/AnimatedSprite.visible = false
		
		if global.diceRoll >=5 and global.diceRoll < 6:
		global.rollResult = 5
		$dice/dice.visible = true
		$dice/AnimatedSprite.playing = false
		$dice/AnimatedSprite.visible = false
	
	
		
		if global.diceRoll >=5 and global.diceRoll < 6:
		global.rollResult = 6
		$dice/dice.visible = true
		$dice/AnimatedSprite.playing = false
		$dice/AnimatedSprite.visible = false	
	pass
	
	
	
		