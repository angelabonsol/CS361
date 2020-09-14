/**
 * 
 */
package employee;

/**
 * @author Angela Bonsol
 */

// Resource: https://www.baeldung.com/java-type-casting

// Complete the provided code

public class DemoEmployee {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		Employee emp1 = new Employee("John", "Smith", "123456790");

		PartTimeEmployee pEmp1 = new PartTimeEmployee("Jane", "Smith", "123456777", 17.5);

//		Employee emp2 = new Employee("Don", "Holmes", "123456799");

//		PartTimeEmployee pEmp2 = new PartTimeEmployee("Melissa", "Will", "123456666", 23.5);

		// Upcasting
		Employee emp3 = pEmp1;
		System.out.println("emp3");
		emp3.whoAmI();
		// TODO To complete
		// emp3.whoAmI() 
		// prints "PART TIME EMPLOYEE" because the class PartTimeEmployee is an extended class of Employee 
		// and the method "whoAmI()" exists on both. Although we upcasted pEmp1 from PartTimeEmployee to 
		// Employee, the object emp3 remains to be an object of PartTimeEmployee. Since the method exists 
		// on both, the compiler will redirect to the "whoAmI()" version of the PartTimeEmployee class. 
		// Thus, the printed statement in the whoAmI() method in the extended class  PartTimeEmployee will 
		// be printed. 
		
		// emp3.getHourlyRate(); // returns syntax error because the method "getHourlyRate()" is only specific
		// to the class PartTimeEmployee. Since we had upcasted emp3 on line 31, it remains to be a
		// PartTimeEmployee object, however, certain methods are now restricted from emp3. 
		
	
		// TODO To complete
		// Add the condition that test that emp3 is an instance of part time employee at
		// this time
//		 if (emp3 instanceof PartTimeEmployee) {
//		 System.out.println("emp3 instance of part time employee"); // printed
//		 } else {
		System.out.println("emp3 not instance of part time employee");
//		 }

		// Downcasting 1
		// TODO Uncomment and run the code
		 PartTimeEmployee pEmp3 = (PartTimeEmployee) emp1;
		// TODO To complete
		// This instruction does not compile
		// This instruction returns a ClassCastException at run time
		// because the type we are trying to downcast does not match the real object. 
		// In other words, we had declared that emp1 is a PartTimeEmployee, and we are 
		// downcasting it to PartTimeEmployee, however emp1 is actually a type from the 
		// Employee class, declared on line 21. 

		// Downcasting 2
		// Requires the use of instanceof to avoid a run time cast exception
		// TODO Look at the solution below
		if (emp3 instanceof PartTimeEmployee) {
			System.out.println("emp3 instance of part time employee"); // printed
			PartTimeEmployee pEmp4 = (PartTimeEmployee) emp3; // cast required
			System.out.println(pEmp4.getHourlyRate());
		} else {
			System.out.println("emp3 not instance of part time employee");
		}
	}
}
