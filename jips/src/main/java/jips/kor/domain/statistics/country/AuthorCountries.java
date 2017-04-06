package jips.kor.domain.statistics.country;

import java.util.Map;

/**
 * Created by yhhan on 2016. 4. 16..
 */
public class AuthorCountries {
    private int total;
    private Map<String, Integer> countryCodeMapFiltered;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Map<String, Integer> getCountryCodeMapFiltered() {
        return countryCodeMapFiltered;
    }

    public void setCountryCodeMapFiltered(Map<String, Integer> countryCodeMapFiltered) {
        this.countryCodeMapFiltered = countryCodeMapFiltered;
    }

    @Override
    public String toString() {
        return "AUTHOR{" + countryCodeMapFiltered +'}';
    }
}
