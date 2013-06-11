package be.bennit.mg;

public aspect Script {
	
	static {
		// set the amount of questions per round
		Game.Q_PER_ROUND = 10;
	}
	
	// track the round nr
	static int round = 0;
	before() : call(void be.bennit.mg.Game.round(int)) {
		round++;
	}
	
	// track the questions
	after() returning (Question q) : call(Question.new()) {
		String answer = q.answer;
		switch(round) {
		case 1: break;					// always correct
		case 2: answer+= "5"; break; 	// always wrong
		case 3: break; 					// always correct
		}
		input(answer);
	}
	
	// continue for 3 rounds, then stop
	before() : call(boolean be.bennit.mg.Game.askContinue()) {
		if(round == 3) { input("n"); }
		else { input("Y"); };
	}
	
	// input emulation
	static String input = "";
	static void input(String s) { input = s; }
	String around() : call(String be.bennit.mg.Game.read()) {
		Game.writeln(input);
		return input;
	}

}
