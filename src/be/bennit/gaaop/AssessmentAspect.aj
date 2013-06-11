package be.bennit.gaaop;

public abstract aspect AssessmentAspect extends AdaptivityBaseAspect {
	
	protected void plusOne(String prop) {
		user().set(prop,(int) user().get(prop) + 1);
	}
	
	protected void minusOne(String prop) {
		user().set(prop,(int) user().get(prop) - 1);
	}
	
}
