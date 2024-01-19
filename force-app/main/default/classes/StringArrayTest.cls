public class StringArrayTest {
    public static List<String> generateStringArray(integer num){
        String header = 'Test';
        List<String> numbers = new List<String>();
        for(integer i=0;i<num;i++){
            numbers.add(header + ' ' + i);
        }
        return numbers;
    }
}