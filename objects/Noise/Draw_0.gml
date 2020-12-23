/// @description Drawing Noise
// You can write your code in this editor

if(y<room_height)
{
	surface_set_target(surface)
	while (x<room_width)
	{
		var val = (Perlin(x*.001,y*.001,frequency,octaves)*127)+128;
		var c = make_color_hsv(0,0,val);
		draw_rectangle_color(x,y,x+1,y+1,c,c,c,c,true);
		x++;
	}
	y++;
	x=0;
	surface_reset_target();
}
draw_surface(surface,0,0);