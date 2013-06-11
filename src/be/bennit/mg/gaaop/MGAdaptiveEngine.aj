package be.bennit.mg.gaaop;

import org.aspectj.lang.JoinPoint;

import be.bennit.gaaop.AdaptiveEngineAspect;

public aspect MGAdaptiveEngine extends AdaptiveEngineAspect {
	
	protected pointcut init() : call(void be.bennit.mg.Game.gameloop());
	protected void doInit(JoinPoint jp) {
		debug("MGAdaptiveEngine init");
		// nothing to do
	}
	
	protected pointcut cleanup() : call(void be.bennit.mg.Game.gameloop());
	protected void doCleanup(JoinPoint jp) {
		debug("MGAdaptiveEngine cleanup");
		// nothing to do
	}
	
	protected void addFeatures() {
		user().addFeature("accuracy", new MGAccuracyFeature());
	}

}