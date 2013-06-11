package be.bennit.mg.gaaop;

import be.bennit.gaaop.*;

public aspect MGHarderAdaptation extends AdaptationAspect {
	
	Double limit = 0.8;
	Double factor = 10.0;

	protected pointcut pc() : call(void be.bennit.mg.Game.round(int));

	protected boolean threshold(User u) {
		debug("Running threshold for harder adaptation");
		return (Double) u.compute("accuracy") > limit;
	}

	protected void adapt(Assoc cfg) {
		debug("Adapting: making it harder");
		int max = cfg.get("max");
		cfg.set("max",(int) Math.ceil(factor*max));
	}	
	
}
