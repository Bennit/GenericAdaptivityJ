package be.bennit.gaaop;

import org.json.JSONObject;

public class Assoc {

	JSONObject properties;
	
	@SuppressWarnings("unchecked")
	public <T> T get(String prop) {
		return (T) properties.get(prop);
	}
	
	public <T> void set(String prop, T val) {
		properties.put(prop,val);
	}
	
	public Assoc() {
		this.properties = new JSONObject();  
	}
	
	public String toString() {
		return properties.toString();
	}

}
