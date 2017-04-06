package jips.kor;

import jips.kor.domain.CustomDate;
import java.util.GregorianCalendar;
import org.springframework.stereotype.Component;

/**
 * Created by yhhan on 2016. 3. 22..
 */
@Component
public class SystemUtil {
    public CustomDate getToday() {
        GregorianCalendar today = new GregorianCalendar ( );
        int year = today.get ( today.YEAR );
        int month = today.get ( today.MONTH ) + 1;
        int date = today.get ( today.DATE );
        return new CustomDate(year, month, date);
    }
}
