package be.bennit.mg.gaaop;

import be.bennit.gaaop.Assoc;
import be.bennit.gaaop.ConfigurationAspect;
import be.bennit.gaaop.User;
import be.bennit.mg.Operand;

public aspect MGSettingsUserInit extends ConfigurationAspect {
	
	boolean first = true;

	protected pointcut pc() : call(void be.bennit.mg.Game.round(int));
	
	protected void configure(User u, Assoc cfg) {
		cfg.<Integer>set("max", Operand.MAX_OPR);
	}

}