package be.bennit.mg.gaaop;

import be.bennit.gaaop.ConfigurationAspect;
import be.bennit.gaaop.Assoc;
import be.bennit.gaaop.User;

public aspect MGRoundResetUserInit extends ConfigurationAspect {

	protected pointcut pc() : call(void be.bennit.mg.Game.round(int));
	
	protected void configure(User u, Assoc cfg) {
		u.set("questions", 0);
		u.set("correct", 0);
	}

}
