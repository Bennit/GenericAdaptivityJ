package be.bennit.mg.gaaop;

import be.bennit.gaaop.*;

public aspect MGEasierAdaptation extends AdaptationAspect {
	
	Double limit = 0.5;
	Double factor = 0.1;

	protected pointcut pc() : call(void be.bennit.mg.Game.round(int));

	protected boolean threshold(User u) {
		debug("Running threshold for easier adaptation");
		return (Double) u.compute("accuracy") <= limit;
	}

	protected void adapt(Assoc cfg) {
		debug("Adapting: making it easier");
		int max = cfg.get("max");
		cfg.set("max",(int) Math.ceil(factor*max));
	}	
	
}
