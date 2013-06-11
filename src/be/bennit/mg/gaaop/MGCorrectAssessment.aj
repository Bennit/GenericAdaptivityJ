package be.bennit.mg.gaaop;

import be.bennit.gaaop.AssessmentAspect;

public aspect MGCorrectAssessment extends AssessmentAspect {
	
	// correct answers
	boolean around(String s) : 
		cflow(call(boolean be.bennit.mg.Game.question(int))) &&
		execution(boolean be.bennit.mg.Question.check(String)) &&
		args(s) {
	
		boolean answer = proceed(s);
		if(answer) {
			debug("Attempt correct");
			plusOne("correct");
			return true;
		}
		else {
			debug("Attempt incorrect");
			return false;
		}
		
	}
	
}
