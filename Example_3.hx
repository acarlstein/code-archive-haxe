/**
 * @author: Alejandro G. Carlstein R. M.
 */

class Example_3 {
	
	private static var fib_array : Array<Int> = [1, 1];
	
	static function main(){
		trace("main()");
		trace("Recursive Fibonacci (value: 5): " + recursive_fib(5));
		trace("Dynamic Fibonacci (value: 5): " + dynamic_fib(5));
		print_array();
	}
	
	// Recursive Fibonacci
	private static function recursive_fib(value : Int) : Int {
		if (value < 2)
			return 1;
		return recursive_fib(value - 1) + recursive_fib(value - 2);
	}
	
	// Dynamic Fibonacci
	private static function dynamic_fib(value : Int) : Int {
		if (value < 2) 
			return 1;
		if (fib_array[value] == 0)
			fib_array[value] = dynamic_fib(value - 1) + dynamic_fib(value - 2);	
		return fib_array[value];
	}
	
	private static function print_array() : Void{
		var iter = fib_array.iterator();
		while (iter.hasNext()){
			trace("Array Value: " + iter.next());
		}
	}
		
}
