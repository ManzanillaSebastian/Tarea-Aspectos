/**
 * 
 */
package main;
import adapter.*;
import java.util.ArrayList;
/**
 * 
 */
public class Main {

	/**
	 * @param args
	 */
	
	public static float sumar(int i1, int i2) {
		return i1+i2;
	}
	
	public static void cosas(Target t) {
		t.request();
	}
	
	public static void main(String[] args) {
		
		float res= sumar(2,3);
		System.out.println(res);
		
		Adaptee adaptee = new Adaptee() {
			@Override
			public void specificRequest() {
				System.out.println("xd");
			}
		};
		
		ArrayList<Integer> array = new ArrayList<>();
	}

}
