extends node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	import random
	game_start = input("Roll the dice?")
	def dice_roll():
	print("Your number is:" + str(random.randint(1,6)))
	global play_again
	play_again =  input("Play again?")
	if game_start == "yes":
	dice_roll()
	while play_again == "no":
	dice_roll()
	
	elf game_start == "no":
	print("game over")
 pass

			