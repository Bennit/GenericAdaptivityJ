package be.bennit.mg.gaaop;

import be.bennit.gaaop.Feature;
import be.bennit.gaaop.User;

public class MGAccuracyFeature implements Feature<Double> {

	public Double compute(User u) {
		Integer correct = u.get("correct");
		Integer questions = u.get("questions");
		
		if(questions == 0)
			return 1.0;
		else
			return correct / (double) questions;
	}

}
