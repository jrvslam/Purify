if (startAtt) {
	with (other) {
		PlayerHit(other.attackDmg);
		isHurt = true;
	}
	startAtt = false;
}