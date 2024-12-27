extends Node2D

@export var card_texture: Texture2D
@export var card_value: int

@onready var sprite = $Sprite2D
 

func _ready():
	update_card()

func update_card():
	# Aplica a textura ao Sprite2D
	if sprite and card_texture:
		sprite.texture = card_texture
	
	 
