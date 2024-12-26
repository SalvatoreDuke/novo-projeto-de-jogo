extends Node2D  # Ou Control, dependendo do nó raiz

@export var card_value: int = 0  # Valor da carta
@export var card_texture: Texture  # Textura da carta

@onready var sprite = $Sprite2D  # Ajuste o caminho se usar TextureRect
 

func _ready():
	# Define a textura e o valor inicial
	if card_texture:
		sprite.texture = card_texture
