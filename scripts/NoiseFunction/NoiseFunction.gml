function NoiseFunction() {
	var xPos = argument[0];
var yPos = argument[1];

var x_min = ~~(xPos);
var x_max = x_min+1;

var y_min = ~~(yPos);
var y_max = y_min+1;






random_set_seed(getSeed(x_min, y_min));
var g0x = choose(-1, 1);
var g0y = choose(-1, 1);

random_set_seed(getSeed(x_min+1, y_min));
var g1x = choose(-1, 1);
var g1y = choose(-1, 1);

random_set_seed(getSeed(x_min, y_min+1));
var g2x = choose(-1, 1);
var g2y = choose(-1, 1);

random_set_seed(getSeed(x_min+1, y_min+1));
var g3x = choose(-1, 1);
var g3y = choose(-1, 1);

var d0x = xPos - x_min
var d0y = yPos - y_min

var d1x = xPos - x_max
var d1y = yPos - y_min

var d2x = xPos - x_min
var d2y = yPos - y_max

var d3x = xPos - x_max
var d3y = yPos - y_max


var lerp1 = lerp(
			dot_product(d0x, d0y, g0x, g0y), 
			dot_product(d1x, d1y, g1x, g1y),
			fade(xPos-x_min)
			);
			
var lerp2 = lerp(
			dot_product(d2x, d2y, g2x, g2y), 
			dot_product(d3x, d3y, g3x, g3y),
			fade(xPos-x_min)
			);
		
return lerp(
			lerp1, 
			lerp2,
			fade(yPos-y_min)
			);	
}