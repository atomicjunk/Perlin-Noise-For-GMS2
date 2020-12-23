// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Perlin(){
	var xPos = argument[0];
	var yPos = argument[1];
	var frequency = argument[2];
	var octaves = argument[3];

	var result = 0;
	var amplitude = 1;
	var max_value = 0;

	for (var i=0; i<octaves; i++)
	{
		result += NoiseFunction(xPos*frequency, yPos*frequency)*amplitude;
		max_value+=amplitude;
		amplitude*=.5;
		frequency*=2;
}

return result/max_value;
}