import java.util.Hashtable;
import java.util.Set;

public class EmployeeWage {
	final static int IS_PART_TIME = 1;
	final static int IS_FULL_TIME = 2;
	final static int MAX_HRS_IN_MONTH = 100;
	final static int EMP_RATE_PER_HR = 20;
	final static int NUM_WORKING_DAYS = 20;

	public static void main(String[] args) {
		getEmployeeWage();
}
public static int getWorkHrs(int empCheck){
		        int empHrs;
		        switch(empCheck){
		        case  IS_FULL_TIME :  empHrs=8;
		                              break;
		        case  IS_PART_TIME :  empHrs=4;
		                              break;
		                   default :  empHrs=0;
		                              break;
		        }
		       return empHrs;
}
public static void getEmployeeWage(){
	    int totalEmpHrs=0;
   	 int totalWorkingDays=0;
		 Hashtable<Integer, Integer> dailyWage = new Hashtable<Integer, Integer>();
       while(totalEmpHrs<=MAX_HRS_IN_MONTH && totalWorkingDays<=NUM_WORKING_DAYS){
	        totalWorkingDays++;
		     int empHrs=getWorkHrs((int)(Math.random()*3));
		     totalEmpHrs=totalEmpHrs+empHrs;
		     int dailySalary=empHrs * EMP_RATE_PER_HR;
		     dailyWage.put(Integer.valueOf(totalWorkingDays),Integer.valueOf(dailySalary));
      }
		int totalSalary=totalEmpHrs*EMP_RATE_PER_HR;
		System.out.println("Total Salary "+totalSalary);
		Set<Integer> keys = dailyWage.keySet();
		for(Object key : keys){
			System.out.println("Day"+key+" : wage "+dailyWage.get(key));
		}
}
}

