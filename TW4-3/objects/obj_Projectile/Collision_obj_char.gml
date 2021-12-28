/// @description Insert description here
// You can write your code in this editor
with (other) {
	state = PLAYERSTATE.INJURED;
	PlayerHit(other.attackDmg);
	isHit = true;
}

instance_destroy();