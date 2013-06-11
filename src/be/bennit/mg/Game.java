package be.bennit.mg;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;

public class Game {
	
	public static int Q_PER_ROUND = 2;
	
	public static void main(String[] args) {
		
		writeln("Welcome to MathGame!");
		writeln("Let's start counting.");
		gameloop();
		writeln("Count-on!");

	}
	
	// Start the gameloop until the player wants to stop
	static void gameloop() {
		int i = 1;
		do {
			round(i);
			i++;
		} while (askContinue());
	}
	
	// Start a round of questions
	static void round(int nr) {
		writeln("Round "+nr);
		int correct = 0;
		for(int i = 0; i < Q_PER_ROUND; i++) {
			if(question(i+1))
				correct++;
		}
		writeln("Round grade: "+correct+"/"+Q_PER_ROUND);	
		writeln("---------------------------------");
	}
	
	// Ask a question and check the answer
	static boolean question(int nr) {
		Question q = new Question();
		write("Question "+nr+": "+q.computation+" = ");
		if(q.check(read())) {
			writeln("Correct!");
			return true;
		}
		else {
			writeln("Wrong, the correct answer was "+q.answer);
			return false;
		}
	}
	
	static boolean askContinue() {
		write("Do you want to go for another round (Y/n)? ");
		return ! read().equals("n");
	}
	
	// Reading & Writing
    static BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
    static PrintStream out = System.out;
    static void write(String s) {
    	out.print(s);
    }
    static void writeln(String s) {
    	out.println(s);
    }    
    static String read() {
    	try { return in.readLine();	}
    	catch (IOException e) { e.printStackTrace(); return ""; }
    }

}
