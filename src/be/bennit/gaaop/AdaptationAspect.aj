package be.bennit.gaaop;

public abstract aspect AdaptationAspect extends AdaptivityBaseAspect {
	
	abstract protected pointcut pc();
	abstract protected boolean threshold(User u);
	abstract protected void adapt(Assoc cfg);
	
	after() : pc() {
		if(threshold(user())) {
			adapt(cfg());
		}
	}
	
}