package snow.tool;

import java.text.NumberFormat;
import java.util.Locale;

//Hỗ trợ làm đẹp
public class Helper {
    public static String fomatNumber(long number) {
        NumberFormat numberFormat = NumberFormat.getNumberInstance(Locale.ITALY);
        return numberFormat.format(number);
    }

    public static String cutString(String str, int size) {
        if (str.length() > size) {
            str = str.substring(0, size);
            str += "..";
        }
        return str;
    }
}
