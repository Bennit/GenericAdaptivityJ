package be.bennit.gaaop;

import java.util.Set;

import org.json.JSONObject;

public abstract aspect ConfigurationAspect extends AdaptivityBaseAspect {
	
	protected static void cfgFromJSON(JSONObject json, Assoc target) {
		@SuppressWarnings("unchecked")
		Set<String> keys = json.keySet();
		
		for(String key : keys) {
			target.set(key,json.get(key));
		}
			
	}
	
	protected abstract pointcut pc();
	protected abstract void configure(User u, Assoc cfg);
	before(): pc() {
		configure(user(), cfg());
	}

}
