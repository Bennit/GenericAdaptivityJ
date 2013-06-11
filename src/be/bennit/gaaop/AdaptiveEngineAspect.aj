package be.bennit.gaaop;

import org.aspectj.lang.JoinPoint;

public abstract aspect AdaptiveEngineAspect extends AdaptivityBaseAspect {
	
	public static User user = new User();
	public static Assoc cfg = new Assoc();

	// method that gets called to add the features
	protected abstract void addFeatures();
	
	// adaptive engine initialization interface
	protected abstract pointcut init();
	protected abstract void doInit(JoinPoint jp);
	before() : init() {
		addFeatures();
		doInit(thisJoinPoint);
	}
	
	// adaptive engine finalization interface
	protected abstract pointcut cleanup();
	protected abstract void doCleanup(JoinPoint jp);
	after() : cleanup() {
		doCleanup(thisJoinPoint);
	}
	
}
