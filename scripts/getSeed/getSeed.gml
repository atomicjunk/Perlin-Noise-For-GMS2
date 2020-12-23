// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getSeed(){
	var val1 = argument[0];
	var val2 = argument[1];

	random_set_seed(-val1);
	var firstseed = random(9999);
	random_set_seed(val2);
	var secondseed = random(999999);

	return firstseed + secondseed + seed
}