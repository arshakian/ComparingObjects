public class UniversalComparator { 
	public static Integer Compare(Object firstItem, Object secondItem){
		try{
			Decimal d1 = Decimal.ValueOf(String.valueOf(firstItem));
			Decimal d2 = Decimal.Valueof(String.valueOf(secondItem));
			if(d1 > d2){
				return 1;
			} else if (d1 == d2){
				return 0;
			} else{
				return -1;
			}
		} catch(Exception e) {
			String error_message = 'Sorry! You can`t compare this obgects';
			e.setMessage(error_message);
			throw e;
		}
	}
}
