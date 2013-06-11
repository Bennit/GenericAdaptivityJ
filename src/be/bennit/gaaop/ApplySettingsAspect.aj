package be.bennit.gaaop;

import org.aspectj.lang.JoinPoint;

public abstract aspect ApplySettingsAspect extends AdaptivityBaseAspect {
	
	protected abstract pointcut pc();
	protected abstract void apply(Assoc cfg, JoinPoint jp);
	
	after() : pc() {
		this.apply(cfg(), thisJoinPoint);
	}
	
	
}
