extends CharacterBody2D

@export var speed = 100
@onready var animated_character = $AnimatedCharacter

func emote():
	speed = 0
	animated_character.play('emote')
	
func _input(event):
	if event.is_action_pressed("emote") && animated_character.animation != 'emote':
		emote()

func get_movement_input():		
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
#	if input is left
	if(input_direction[0] == -1):
		animated_character.play('left')
#	if input is right
	if(input_direction[0] == 1):
		animated_character.play('right')
#	if input is up
	if(input_direction[1] == -1):
		animated_character.play('up')
#	if input is up
	if(input_direction[1] == 1):
		animated_character.play('down')
#	if no input
	if(input_direction[0] == 0 && input_direction[1] == 0) && animated_character.animation != 'emote':
		animated_character.play('idle')

func _physics_process(delta):
	get_movement_input()
	move_and_slide()

func _on_animated_character_animation_finished():
	if (animated_character.animation == 'emote'):
		animated_character.play('idle')
		speed = 100
