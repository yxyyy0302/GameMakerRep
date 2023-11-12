right_key = keyboard_check(ord("D")) || keyboard_check(vk_right);
left_key = keyboard_check(ord("A")) || keyboard_check(vk_left);
up_key = keyboard_check(ord("W")) || keyboard_check(vk_up);
down_key = keyboard_check(ord("S")) || keyboard_check(vk_down);

//get speeds
xspeed = (right_key - left_key) * move_speed;
yspeed = (down_key - up_key) * move_speed;

//pausing
if instance_exists(obj_pauser)
	{
		xspeed = 0;
		yspeed = 0;
	}

//set sprite
mask_index = sprite[DOWN];
if yspeed == 0
	{
		if xspeed > 0 {face = RIGHT};
		if xspeed < 0 {face = LEFT};
	}
if xspeed > 0 && face == LEFT {face = RIGHT};
if xspeed < 0 && face == RIGHT {face = LEFT};

if xspeed == 0
	{
		if yspeed < 0 {face = UP};
		if yspeed > 0 {face = DOWN};
	}
if yspeed < 0 && face == DOWN {face = UP};
if yspeed > 0 && face == UP {face = DOWN};


sprite_index = sprite[face];

//collisions
if place_meeting(x + xspeed, y, obj_wall) == true
	{
		xspeed = 0;
	}

if place_meeting(x, y + yspeed, obj_wall) == true
	{
		yspeed = 0;
	}

//move the player
x += xspeed;
y += yspeed;

//animate
if xspeed == 0 && yspeed = 0
	{
		image_index = 0;
	}

//depth
depth = -bbox_bottom;






