package be.bennit.gaaop;

public interface Feature<T> {
	// Compute the feature based on the user
	public T compute(User u);
}