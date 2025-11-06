extends Resource

@export var texture_slots: Array[Texture2D]
sprite.Texture = texture_slots.pick_random()

