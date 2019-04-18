package com.techelevator.model;

public class Badges {
	private boolean defenderBadge;
	private boolean bottomsUpBadge;
	private boolean elevateBadge;
	private boolean nextYearBadge;

	public boolean isNextYearBadge() {
		return nextYearBadge;
	}

	public void setNextYearBadge(boolean nextYearBadge) {
		this.nextYearBadge = nextYearBadge;
	}

	public boolean isElevateBadge() {
		return elevateBadge;
	}

	public void setElevateBadge(boolean elevateBadge) {
		this.elevateBadge = elevateBadge;
	}

	public boolean isBottomsUpBadge() {
		return bottomsUpBadge;
	}

	public void setBottomsUpBadge(boolean bottomsUpBadge) {
		this.bottomsUpBadge = bottomsUpBadge;
	}

	public boolean isDefenderBadge() {
		return defenderBadge;
	}

	public void setDefenderBadge(boolean defenderBadge) {
		this.defenderBadge = defenderBadge;
	}

}
