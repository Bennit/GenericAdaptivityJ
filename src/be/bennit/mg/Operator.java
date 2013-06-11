package be.bennit.mg;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public enum Operator {
	ADDITION("+") {
		public int apply(int lh, int rh) {
            return lh + rh;
        }
	},
	SUBTRACTION("-") {
		public int apply(int lh, int rh) {
            return lh - rh;
        }
	},
	MULTIPLICATION("*") {
		public int apply(int lh, int rh) {
            return lh * rh;
        }
	};
	
	private final String text;
	private Operator(String s) {
		text = s;
	}

    public String toString() {
       return text;
    }
    
    public abstract int apply(int lh, int rh);
    
    private static final List<Operator> VALUES =
       	Collections.unmodifiableList(Arrays.asList(values()));
    private static final int SIZE = VALUES.size();
    private static final Random RANDOM = new Random();
    
    public static Operator randomOperation()  {
        return VALUES.get(RANDOM.nextInt(SIZE));
    }

}