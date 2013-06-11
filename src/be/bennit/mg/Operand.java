package be.bennit.mg;

import java.util.Random;

public class Operand {
	
	public static Random r = new Random();

	public static int
		MIN_OPR = 0,
		MAX_OPR = 20;

	public static int randomOperand() {
		return MIN_OPR + r.nextInt(MAX_OPR - MIN_OPR);
	}
	
}