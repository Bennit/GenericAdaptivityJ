package be.bennit.gaaop;

public abstract aspect AdaptivityBaseAspect {
	
	public static User user() {
		return AdaptiveEngineAspect.user;		
	}
	
	public static Assoc cfg() {
		return AdaptiveEngineAspect.cfg;
	}
	
	public static void debug(String msg) {
		if(java.lang.management.ManagementFactory.getRuntimeMXBean().getInputArguments().toString().indexOf("-agentlib:jdwp") > 0) {
			System.out.println("[GAAOP] "+msg);
		}
			
	}
	
}
