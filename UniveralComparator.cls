/**
 * 1. Было бы классно, если бы твой компаратор использовал инстанс оф и сравнивал в зависимости от того, какие это объекты.
 * 2. Было бы классно, если бы твой компаратор не выбрасывал эксепшны (ну какой смысл его ловить тогда).
 * 3. В целом - задание очень размазанное, я его могу таким принять, т.к. мой тест оно пройдёт. Если хочешь закрепить - добавь в этот метод сравнение Листов по кол-ву элементов - там, где больше - тот лист и больше
 * 4. d1 и d2 - это Очень плохие названия для переменных. decimal_value_of_first_item - как вариант вместо d1
 */
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
