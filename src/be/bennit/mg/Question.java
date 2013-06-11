package be.bennit.mg;

public class Question {
	public Integer lh;
	public Integer rh;
	public Operator op;
	public String computation;
	public String answer;
	
	public Question() {
		op = Operator.randomOperation();
		lh = Operand.randomOperand();
		rh = Operand.randomOperand();
		computation = lh+" "+op+" "+rh;
		answer = ((Integer) op.apply(lh, rh)).toString();
	}

	public boolean check(String attempt) {
		return answer.equals(attempt);
	}
}
