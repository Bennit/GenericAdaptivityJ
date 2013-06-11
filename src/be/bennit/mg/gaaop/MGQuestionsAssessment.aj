package be.bennit.mg.gaaop;

import be.bennit.gaaop.*;

public aspect MGQuestionsAssessment extends AssessmentAspect {

	// questions
	before() : execution(boolean be.bennit.mg.Game.question(int)) {
		debug("Question asked");
		plusOne("questions");
	}
	
}
