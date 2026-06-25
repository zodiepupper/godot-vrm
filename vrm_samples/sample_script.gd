extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	# create a list of the nodes we wanna run the sample/wiggle4 animation on
	# and then use the wiggle method to check for and play them
	for vrm in [$Godette_vrm_v4, $"AliciaSolid_vrm-051", $"AliciaSolid_vrm-052"]:
		wiggle(vrm)

## just plays the sample/wiggle4 animation on the target vrm if it has it
func wiggle(target_vrm_root : Node3D):
	# first make sure the instance still exists
	if is_instance_valid(target_vrm_root):
		# find the animation player
		var tmp_animation_player : AnimationPlayer = target_vrm_root.find_child("AnimationPlayer")
		# if the animation player is real and it has the right animation...
		if tmp_animation_player and tmp_animation_player.has_animation("sample/wiggle4"):
			# set the animation to loop linearly
			tmp_animation_player.get_animation("sample/wiggle4").loop_mode = Animation.LOOP_LINEAR
			tmp_animation_player.play("sample/wiggle4")
