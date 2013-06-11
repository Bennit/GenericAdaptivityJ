package be.bennit.mg.gaaop;

import org.aspectj.lang.JoinPoint;

import be.bennit.gaaop.ApplySettingsAspect;
import be.bennit.gaaop.Assoc;
import be.bennit.mg.Operand;

public aspect MGApplySettings extends ApplySettingsAspect {

	protected pointcut pc() : call(void adapt(Assoc));
	// run after adaptations to the configuration were made
	protected void apply(Assoc cfg, JoinPoint jp) {
		debug("Applying settings");
		Operand.MAX_OPR = cfg.get("max");
	}
	
}
