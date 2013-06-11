package be.bennit.gaaop;

import java.util.HashMap;

public class User extends Assoc {
	
	HashMap<String,Feature<?>> features;
	
	public User() {
		super();
		features = new HashMap<>();
	}
	
	public void addFeature(String name, Feature<?> ft) {
		features.put(name,ft);
	}
	
	@SuppressWarnings("unchecked")
	public <T> T compute(String ft) {
		return (T) features.get(ft).compute(this);
	}


}
